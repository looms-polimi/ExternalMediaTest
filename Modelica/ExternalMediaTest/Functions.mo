within ExternalMediaTest;
package Functions

  function testExternalError "Function triggering of ModelicaError in DLL functions if u > 0.5"
    input Real u;
    output Real y;
    external "C" testExternalError(u,y);
    annotation(Include=
      "#include \"library.h\"
    
     void testExternalError(double u, double *y)
     {
       testExternalErrorImpl(u, y, ModelicaError);
     }
    
     void testExternalErrorImpl(double u, double *y, void error(const char *))
     {
       if(u > 0.5)
         error(\"u > 0.5\");
       *y = u*10;
     } 
    ");

  end testExternalError;

  function densityCO2_pT "Compute the density of carbon dioxide using the CoolProp DLL"
    input SI.Pressure p;
    input SI.Temperature T;
    output SI.Density rho;
    external "C";

  end densityCO2_pT;

  function setState_pTX
    input SI.Pressure p;
    input SI.Temperature T;
    input SI.MassFraction X[Types.nX];
    output Types.State state;
    external "C";
  end setState_pTX;

  function density
    input Types.State state;
    output SI.Density d;
    external "C";
  end density;
end Functions;
