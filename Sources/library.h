
/*!
Portable definitions of the EXPORT macro
 */
/*#ifndef EXPORT
#  if defined(__ISLINUX__)
#    define EXPORT
#  elif defined(__ISAPPLE__)
#    define EXPORT
#  else
#    define EXPORT __declspec(dllexport)
#  endif
#endif*/

#ifdef BUILDING_DLL
#define DLLSPEC __declspec(dllexport)
/*#define CONV(a) _ ## a*/
#else
#define DLLSPEC __declspec(dllimport)
/*#define CONV(a) a*/
#endif


#if defined(__cplusplus)
extern "C" {
#endif

	DLLSPEC void testExternalErrorImpl(double u, double *y, void error(const char *));


#if defined(__cplusplus)
}
#endif