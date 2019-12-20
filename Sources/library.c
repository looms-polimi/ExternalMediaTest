#include "library.h"

#if defined(__cplusplus)
extern "C" {
#endif

	DLLSPEC void testExternalErrorImpl(double u, double *y, void error(const char *))
		 {
		   if(u > 0.5)
			 error("u > 0.5");
		   *y = u*10;
		 } 
	 
	 
#if defined(__cplusplus)
}
#endif