#include "cs.h"
#include "ppp_cs.h"

#if defined(MEM_PREALLOC)
#define RESHAPE \
  { \
    if(nz > cnzmax) REPORT_ERR(PPP_EIP); \
  }
#else
#define RESHAPE \
  { \
    if(nz > cnzmax) { \
      cnzmax = cnzmax*2; \
      if(!cs_sprealloc(C, cnzmax)) \
          REPORT_ERR(PPP_ENOMEM); \
      Cx = C->x; \
      Cp = C->p; \
      Ci = C->i; \
    } \
  }
#endif

/* C = A' * Y */
/* This implementation is very similar to ppp_dotproduct, but we do not use
   that function to compute the dot product needed here to avoid memory management
*/
void ppp_gaty(cs * C, cs const * A, cs const * Y)
{
  csi p, i, j, nz = 0, *Cp, *Ci, *Ap, *Yp, *Ai, *Yi, n, ap, yp, m, cnzmax;
  double *x, *Ax, *Yx, *Cx, c;
  
  if(!CS_CSC(A) || !CS_CSC(Y) || !CS_CSC(C)) REPORT_ERR(PPP_EOP);
  if(A->m != Y->m || Y->n != 1 || A->n != C->m || C->n != 1) REPORT_ERR(PPP_EOP);
  if(A->x == NULL || Y->x == NULL || C->x == NULL) REPORT_ERR(PPP_EBMAT);

  n = A->n;
  m = A->m;
  Ap = A->p; Ai = A->i; Ax = A->x;
  Yp = Y->p; Yi = Y->i; Yx = Y->x;
  Cp = C->p; Ci = C->i; Cx = C->x; cnzmax = C->nzmax;

  /* C may not be empty. Clean it up */
  for(i = 0; i <= C->n; ++i)
    C->p[i] = 0;

  Cp[0] = 0;
#if defined(PPP_SCATTER_GATHER) && !defined(PPP_TWO_POINTERS)
  x = ppp_work_double;    /* get workspace */
  if (!x) REPORT_ERR(PPP_EOP) ;
  if (n > pp_ws_size) REPORT_ERR(PPP_EIWS);
  /* scatter Y so that we can reuse it*/
  for(p=Yp[0]; p < Yp[1]; ++p)
    x[Yi[p]] = Yx[p];
  for(j = 0; j < n; ++j){
    /* gather */
    c = 0;
    for(p=Ap[j]; p < Ap[j+1]; ++p)
      c += x[Ai[p]] * Ax[p];
    if(c != 0){
      Ci[nz] = j;
      Cx[nz] = c;
      ++nz;
      RESHAPE;
    }
  }
  /* clean x*/
  for(p=Yp[0]; p < Yp[1]; ++p)
    x[Yi[p]] = 0;
#elif !defined(PPP_SCATTER_GATHER) && defined(PPP_TWO_POINTERS)
  for(j = 0; j < n; ++j){
    ap = Ap[j];
    yp = Yp[0];
    c = 0;
    while(ap < Ap[j+1] && yp < Yp[1]){
      if(Ai[ap] == Yi[yp]){
        c += Ax[ap] * Yx[yp];
        ++ap;
        ++yp;
      }else if(Ai[ap] < Yi[yp]){
        ++ap;
      }else{
        ++yp;
      }
    }
    if(c != 0){
      Ci[nz] = j;
      Cx[nz] = c;
      ++nz;
      RESHAPE;
    }
  } 
#else
#error "Must define exactly one of PPP_SCATTER_GATHER and PP_TWO_POINTERS"
#endif
  /* Finalize C */
  Cp[1] = nz;
}
