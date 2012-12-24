#include "ppp_cs.h"
#include "cs.h"
#include <stdio.h>
#include <stdlib.h>

void test_ppp_add(char const * A_file, char const * B_file, char const * C_file)
{
  cs * A = ppp_load_ccf(A_file);
  cs * B = ppp_load_ccf(B_file);
  cs *C = NULL, *D = NULL;
  if(C_file)
    C = ppp_load_ccf(C_file);

  cs *  R = cs_spalloc(A->m, A->n, A->p[A->n] + B->p[B->n], 1, 0); /* allocate result*/
  csi mn = A->n > A->m ? A->n : A->m;
  ppp_init_cs(mn);
 
  ppp_add(R, A, B, 1);
  
  /* Test equivalence */
  if(C_file){
  D = cs_add(C,R,1,-1);
  if(cs_norm(D) > cs_norm(C) * PPP_EPSILON){
    fprintf(stderr, "Diff found [%s + %s != %s]:\n", A_file, B_file, C_file);
    fprintf(stdout, "Diff found [%s + %s != %s]:\n", A_file, B_file, C_file);
    fprintf(stdout, "Expected:\n");
    cs_print(C,0);
    fprintf(stdout, "Obtained:\n");
    cs_print(R,0);
    fprintf(stdout, "Diff:\n");
    cs_print(D,0);
  }else{
    fprintf(stdout, "Success!\n");
  }
  }

  /* clean up*/
  cs_spfree(A);
  cs_spfree(B);
  cs_spfree(C);
  cs_spfree(R);
  cs_spfree(D);
  ppp_done();
}


int main(int argc, char ** argv)
{
  if(argc < 3){
    fprintf(stderr, "Usage: ./%s A_file B_file [C_file]\n", argv[0]);
    fprintf(stderr, "  Computes [and tests] A_file + B_file [= C_file]\n");
    return -1;
  }

  if(argc == 4)
    test_ppp_add(argv[1], argv[2], argv[3]);
  else
    test_ppp_add(argv[1], argv[2], NULL);

  return 0;
}
