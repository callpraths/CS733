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

/* C = A + alpha B */
void ppp_add (cs * C, cs const * A, cs const * B, double alpha)
{
  csi p, i, j, nz = 0, *Cp, *Ci, *Ap, *Bp, *Ai, *Bi, n, ap, bp, cnzmax ;
  double *x, *Ax, *Bx, *Cx ;

  /* check inputs */
  if (!CS_CSC(A)) REPORT_ERR(PPP_EOP); 
  if (!CS_CSC(B)) REPORT_ERR(PPP_EOP);
  if (!CS_CSC(C)) REPORT_ERR(PPP_EOP);
  if (A->m != B->m || A->n != B->n) REPORT_ERR(PPP_EOP);
  if (A->m != C->m || A->n != C->n) REPORT_ERR(PPP_EOP);
  if(A->x == NULL || B->x == NULL || C->x == NULL) REPORT_ERR(PPP_EBMAT);

  n = A->n;
  Ap = A->p; Ai = A->i; Ax = A->x;
  Bp = B->p; Bi = B->i; Bx = B->x;
  Cp = C->p; Ci = C->i; Cx = C->x; cnzmax = C->nzmax;

  /* C may not be empty. Clean it up */
  for(i = 0; i <= C->n; ++i)
    C->p[i] = 0;

#if defined(PPP_SCATTER_GATHER) && !defined(PPP_TWO_POINTERS)
  x = ppp_work_double;    /* get workspace */
  if (!x) REPORT_ERR(PPP_EOP);
  if (A->m > pp_ws_size) REPORT_ERR(PPP_EIWS); 

  for (j = 0 ; j < n ; ++j){
    Cp [j] = nz ;                   /* column j of C starts here */
    for(p = Ap[j]; p < Ap[j+1]; ++p){ /* x = A(:,j)*/
      i = Ai[p];
      Ci[nz++] = i;
      x[i] = Ax[p]; 
      RESHAPE;
    }
    for(p = Bp[j]; p < Bp[j+1]; ++p){ /* x = x+B(:,j)*/
      i = Bi[p];
      if(x[i] == 0){
        Ci[nz++] = i;
        x[i] = alpha * Bx[p]; 
        RESHAPE;
      }else{
        x[i] += alpha * Bx[p];
      }
    }
    for (p = Cp [j] ; p < nz ; ++p){ /* Gather */
      Cx[p] = x[Ci[p]];
      x[Ci[p]] = 0;
    }
  }
#elif !defined(PPP_SCATTER_GATHER) && defined(PPP_TWO_POINTERS)
  for(j = 0; j < n; ++j){
    Cp[j] = nz;
    ap = Ap[j];
    bp = Bp[j];
    while(ap < Ap[j+1] || bp < Bp[j+1]){
      if(ap == Ap[j+1]){
        Ci[nz] = Bi[bp];
        Cx[nz] = alpha * Bx[bp];
        ++bp;
      }else if(bp == Bp[j+1]){
        Ci[nz] = Ai[ap];
        Cx[nz] = Ax[ap];
        ++ap;
      }else{
        if(Ai[ap] < Bi[bp]){
          Ci[nz] = Ai[ap];
          Cx[nz] = Ax[ap];
          ++ap;
        }else if(Bi[bp] < Ai[ap]){
          Ci[nz] = Bi[bp];
          Cx[nz] = alpha * Bx[bp];
          ++bp;
        }else{
          Ci[nz] = Ai[ap]; /* or Bi[bp] */
          Cx[nz] = Ax[ap] + alpha * Bx[bp];
          ++ap;
          ++bp;
        }
      }
      ++nz;
      RESHAPE;
    }
  }
#else
#error "Must define exactly one of PPP_SCATTER_GATHER and PP_TWO_POINTERS"
#endif
  Cp [n] = nz ;  /* finalize the last column of C */
}

