#include "cs.h"
#include "ppp_cs.h"

/* c = A' . B */
void ppp_dotproduct (double * c, cs const * A, cs const * B)
{
  csi p, *Ai, *Bi, *Ap, *Bp, ap, bp;
  double *x, *Ax, *Bx;
  /* check inputs */
  csi values;
  if(!CS_CSC(A) || !CS_CSC(B)) REPORT_ERR(PPP_EOP);
  if(A->n != 1 || B->n != 1 || A->m != B->m) REPORT_ERR(PPP_EOP);
  if(A->x == NULL && B->x == NULL) REPORT_ERR(PPP_EBMAT);

  Ai = A->i; Ap = A->p; Ax = A->x;
  Bi = B->i; Bp = B->p; Bx = B->x;

#if defined(PPP_SCATTER_GATHER) && !defined(PPP_TWO_POINTERS)
  x = ppp_work_double;
  if(!x) REPORT_ERR(PPP_EOP);
  if(A->m > pp_ws_size) REPORT_ERR(PPP_EIWS);
  /* scatter */
  for(p=Ap[0]; p < Ap[1]; ++p)
    x[Ai[p]] = Ax[p];
  /* gather */
  *c = 0;
  for(p=Bp[0]; p < Bp[1]; ++p)
    *c += x[Bi[p]] * Bx[p];
  /* clean */
  for(p=Ap[0]; p < Ap[1]; ++p)
    x[Ai[p]] = 0;
#elif !defined(PPP_SCATTER_GATHER) && defined(PPP_TWO_POINTERS)
  ap = Ap[0];
  bp = Bp[0];
  *c = 0;
  while(ap < Ap[1] && bp < Bp[1]){
    if(Ai[ap] == Bi[bp]){
      *c += Ax[ap] * Bx[bp];
      ++ap;
      ++bp;
    }else if(Ai[ap] < Bi[bp]){
      ++ap;
    }else{
      ++bp;
    }
  }
#else
#error "Must define exactly one of PPP_SCATTER_GATHER and PP_TWO_POINTERS"
#endif  
}
