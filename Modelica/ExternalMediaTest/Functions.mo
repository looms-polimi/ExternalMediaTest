within ExternalMediaTest;
package Functions

  function densityCO2_pT "Compute the density of carbon dioxide using the CoolProp DLL"
    input SI.Pressure p;
    input SI.Temperature T;
    output SI.Density rho;
    external "C";

  end densityCO2_pT;

  function testExternalError
    "Function triggering of ModelicaError in DLL functions if x > 1"
    input Real u;
    output Real y;
    external "C";

  end testExternalError;

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
