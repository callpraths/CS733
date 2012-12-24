#ifndef __PPP_CS_H__
#define __PPP_CS_H__

#include "cs.h"
#include <assert.h>

/** 
  * Workspaces
  *  These workspaces are allocated at the beginning of any run by calling the ppp_init_cs method with appropriate size.
  *  Each scatter gather operation leaves the workspaces clean
  **/
csi pp_ws_size;
double * ppp_work_double;

/**
  * Function used to initialize workspaces. 
  *  [size] Size of the arrays allocated
  *  return: 0 if workspaces were allocated properly, non-zero otherwise.
  **/
csi ppp_init_cs(csi size);
/**
  * Call this function when you're done to clean global variables up
  **/
void ppp_done();

/**
  * Wrapper around cs_load and cs_compress
  * This reads n and m respectively from the first line of the file before calling
  * cs_load. Then, if the (m,n) entry is absent in the data, adds a (m,n,0) entry to
  * get the matrix of right dimensions
  **/
cs * ppp_load_ccf(char const * fname);

/**
  * Base operations implemented in this module
  **/
void ppp_add(cs * C, cs const * A, cs const * B, double alpha);
void ppp_dotproduct(double *c, cs const * A, cs const * B);
void ppp_gaty(cs * C, cs const * A, cs const * Y);
int conjugate_gradient(cs const * A, cs const * b, cs * x, int imax, double epsilon);


/**
  * Epsilon used for comparison in tests
  **/
/*#define PPP_EPSILON 0.0001*/
#define PPP_EPSILON 0.01

/**
  * Error codes used throughout the package
  **/
/* Failed to allocate memory */
#define PPP_ENOMEM -2
/* General operator error */
#define PPP_EOP -3
/* Boolean matrix given */ 
#define PPP_EBMAT -4
/* Insufficient WorkSpace */
#define PPP_EIWS -5
/* In the preallocated case, not enough memory allocated */
#define PPP_EIP -6
/* Input matrix malformed */
#define PPP_EMM -7
/* Could not read input */
#define PPP_EI -8

#define PRINT_ERR(f, e) \
  { \
    switch(e){ \
      case PPP_ENOMEM: fprintf(f, "PPP_ENOMEM"); break; \
      case PPP_EOP: fprintf(f, "PPP_EOP"); break; \
      case PPP_EBMAT: fprintf(f, "PPP_EBMAT"); break; \
      case PPP_EIWS: fprintf(f, "PPP_EIWS"); break; \
      case PPP_EIP: fprintf(f, "PPP_EIP"); break; \
    } \
    fflush(f); \
  }

#define REPORT_ERR(e) \
  { \
    PRINT_ERR(stderr, e); \
    abort(); \
  }
#endif /*__PPP_CS_H__*/
