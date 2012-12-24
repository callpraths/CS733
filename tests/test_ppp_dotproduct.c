#include "ppp_cs.h"
#include "cs.h"
#include <stdio.h>
#include <stdlib.h>

void test_ppp_dotproduct(char const * A_file, char const * B_file, char const * C_file)
{
  cs * A = ppp_load_ccf(A_file);
  cs * B = ppp_load_ccf(B_file);

  double c;
  FILE * fin;
  if(C_file){
    fin = fopen(C_file, "r");
    if(!fin){
      fprintf(stderr, "Could not open %s\n", C_file);
      fflush(stderr);
      abort();
    }
    if(!fscanf(fin, "%lf", &c)){
      fprintf(stderr, "Could not read in double from %s\n", C_file);
      fflush(stderr);
      fclose(fin);
      abort();
    }
    fclose(fin);
  }

  csi mn = A->n > A->m ? A->n : A->m;
  ppp_init_cs(mn);

  int err;
  double r;

  ppp_dotproduct(&r, A, B);

  if(C_file){
    /* Test equivalence */
    if(r - c > PPP_EPSILON * c){
      fprintf(stderr, "Diff found [%s . %s != %s]:\n", A_file, B_file, C_file);
      fprintf(stdout, "Diff found [%s . %s != %s]:\n", A_file, B_file, C_file);
      fprintf(stdout, "Expected: %lf\n", c);
      fprintf(stdout, "Obtained: %lf\n", r);
    }else{
      fprintf(stdout, "Success!\n");
    }
  }

  /* clean up*/
  cs_spfree(A);
  cs_spfree(B);
  ppp_done();
}


int main(int argc, char ** argv)
{
  if(argc < 3){
    fprintf(stderr, "Usage: ./%s A_file B_file [C_file]\n", argv[0]);
    fprintf(stderr, "  Computes [and tests] A_file . B_file [= C_file]\n");
    return -1;
  }
  
  if(argc == 3)
    test_ppp_dotproduct(argv[1], argv[2], NULL);
  else
    test_ppp_dotproduct(argv[1], argv[2], argv[3]);
  return 0;
}
