#include "cs.h"
#include "ppp_cs.h"

void ppp_copy(cs * to, cs const * from)
{
  int j;
  if(!CS_CSC(to) || !CS_CSC(from)) REPORT_ERR(PPP_EOP);
  if(to->n != from->n || to->m != from->m) REPORT_ERR(PPP_EOP);
  cs * zero = cs_spalloc(from->m, from->n, 0, 1, 0);
  for(j=0;j<=zero->n;++j)
    zero->p[j] = 0;
  ppp_add(to, from, zero, 1);
  cs_spfree(zero);
}
/* Returns the number of iterations */
int conjugate_gradient(cs const * A, cs const * b, cs * x, int imax, double epsilon)
{
  int i;
  cs *At, *r, *d, *y, *q;
  double delnew, delold, del0, alpha, beta;
  
  /* Check input */
  if(!CS_CSC(A) || !CS_CSC(b) || !CS_CSC(x)) REPORT_ERR(PPP_EOP);
  if(imax < 0 || epsilon <= 0 || epsilon >= 1) REPORT_ERR(PPP_EOP);
  if(A->n != x->m || A->m != b->m || x->n != 1 || b->n != 1) REPORT_ERR(PPP_EOP);
  if(A->n != A->m) REPORT_ERR(PPP_EOP);

  /* Allocate memory for all cs */
  At = cs_spalloc(A->n, A->m, A->nzmax, 1, 0);
  r = cs_spalloc(b->m, b->n, b->m, 1, 0);
  d = cs_spalloc(b->m, b->n, b->m, 1, 0);
  y = cs_spalloc(b->m, b->n, b->m, 1, 0);
  q = cs_spalloc(b->m, b->n, b->m, 1, 0);
   
  At = cs_transpose(A, 1);

  i = 0;

  /* r <= b - Ax */
  ppp_gaty(y, At, x); 
  ppp_add(r, b, y, -1);

  /* d <= r */
  ppp_copy(d, r);

  /* delnew <= r'r */
  ppp_dotproduct(&delnew, r, r);

  del0 = delnew;

  while(i < imax && delnew > epsilon * epsilon * del0){
#if defined(LOG_ALGO)
    printf("[Round %d, Line %d]\n", i, 0);
    printf("At:\n");
    cs_print(At, 0);
    printf("del0: %lf\n", del0);
    printf("x:\n");
    cs_print(x, 0);
    printf("r:\n");
    cs_print(r, 0);
    printf("d:\n");
    cs_print(d, 0);
    printf("y:\n");
    cs_print(y, 0);
    printf("q:\n");
    cs_print(q, 0);
    printf("delnew: %lf\n", delnew);
#endif
    /* q <= Ad */
    ppp_gaty(q, At, d);
#if defined(LOG_ALGO)
    printf("[Round %d, Line %d]\n", i, 1);
    printf("q:\n");
    cs_print(q, 0);
#endif
    /* alpha <= delnew / (d'q) */
    ppp_dotproduct(&alpha, d, q);
    alpha = delnew / alpha;
#if defined(LOG_ALGO)
    printf("[Round %d, Line %d]\n", i, 2);
    printf("alpha: %lf\n", alpha);
#endif
    /* x <= x + alpha d */
    ppp_add(y, x, d, alpha);
    ppp_copy(x, y);
#if defined(LOG_ALGO)
    printf("[Round %d, Line %d]\n", i, 3);
    printf("x:\n");
    cs_print(x, 0);
#endif
    if((i+1) % 50 == 0){
      /* r <= b - Ax */
      ppp_gaty(y, A, x);
      ppp_add(r, b, y, -1);
#if defined(LOG_ALGO)
      printf("[Round %d, Line %d]\n", i, 4);
      printf("r:\n");
      cs_print(r, 0);
#endif
    }else{
      /* r <= r - alpha q */
      ppp_add(y, r, q, -1 * alpha);
      ppp_copy(r, y);
#if defined(LOG_ALGO)
      printf("[Round %d, Line %d]\n", i, 5);
      printf("r:\n");
      cs_print(r, 0);
#endif
    }
    delold = delnew;
#if defined(LOG_ALGO)
      printf("[Round %d, Line %d]\n", i, 6);
      printf("delold: %lf\n", delold);
#endif
    /* delnew = r'r */
    ppp_dotproduct(&delnew, r, r);
#if defined(LOG_ALGO)
      printf("[Round %d, Line %d]\n", i, 7);
      printf("delnew: %lf\n", delnew);
#endif
    beta = delnew / delold;
#if defined(LOG_ALGO)
      printf("[Round %d, Line %d]\n", i, 8);
      printf("beta: %lf\n", beta);
#endif
    /* d <= r + beta d */
    ppp_add(y, r, d, beta);
    ppp_copy(d, y);
#if defined(LOG_ALGO)
      printf("[Round %d, Line %d]\n", i, 9);
      printf("d:\n");
      cs_print(d, 0);
#endif
    i++;
  }

  cs_spfree(At);
  cs_spfree(r);
  cs_spfree(d);
  cs_spfree(y);
  cs_spfree(q);

  return i;
}

