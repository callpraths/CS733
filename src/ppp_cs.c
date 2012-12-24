#include "cs.h"
#include "ppp_cs.h"
#include <assert.h>
#include <string.h>

/* Define global variables */
csi pp_ws_size = 0;
double * ppp_work_double = NULL;

csi ppp_init_cs(csi size)
{
  assert(size >= 0);
  ppp_work_double = cs_malloc(size, sizeof(double));
  if(!ppp_work_double) return PPP_ENOMEM;
  memset(ppp_work_double, 0, size * sizeof(double));
  pp_ws_size = size;
  return 0;
}

void ppp_done()
{
  cs_free(ppp_work_double);
  ppp_work_double = NULL;
  pp_ws_size = 0;
}

cs * ppp_load_ccf(char const * fname)
{
  FILE * fin;
  cs * T = NULL, *ret = NULL;
  fin = fopen(fname, "r");
  if(!fin) {
    REPORT_ERR(PPP_EI);
    return NULL;
  }

  if(!(T = cs_load(fin))){
    fclose(fin);
    REPORT_ERR(PPP_EI);
    return NULL;
  }
  fclose(fin);
  ret = cs_compress(T);
  cs_spfree(T);
  return ret;


#if 0  
  int n,m;
  if(fscanf(fin, "%d %d\n", &n, &m)){
    if(!(T = cs_load(fin))){
      fclose(fin);
      REPORT_ERR(PPP_EI);
      return NULL;
    }
    if(T->n > n || T->m > m){
      REPORT_ERR(PPP_EMM);
      return NULL;
    }else if(T->n < n || T->m < m){
      if(!cs_entry(T, m-1, n-1, 0)){
        cs_spfree(T);
        fclose(fin);
        REPORT_ERR(PPP_EI);
        return NULL;
      }
    }
    fclose(fin);
    ret = cs_compress(T);
    cs_spfree(T);
    return ret;
  }else{
    fclose(fin);
    REPORT_ERR(PPP_EI);
    return NULL;
  }
#endif
  
}
