within ExternalMediaTest;
package Tests

  model TestExternalError
    Real x;
  equation
    x = Functions.testExternalError(time);
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(preserveAspectRatio=false)));
  end TestExternalError;

  model TestDensityCO2 "Tests the densityCO2_pT function"
    parameter SI.Pressure p = 76e6 "Constant pressure";
    parameter SI.Temperature Tmin = 273.15+20 "Minimum temperature";
    parameter SI.Temperature Tmax = 273.15+150 "Maximum temperature";
    constant SI.Time t0 = 1 "One second";
    SI.Temperature T;
    SI.Density rho;
  equation
    T = Tmin + time/t0*(Tmax - Tmin);
    rho = Functions.densityCO2_pT(p,T);
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(preserveAspectRatio=false)));
  end TestDensityCO2;

  model TestState
    parameter SI.Pressure p = 1e5 "Constant pressure";
    parameter SI.Temperature Tmin = 273.15+20 "Minimum temperature";
    parameter SI.Temperature Tmax = 273.15+150 "Maximum temperature";
    constant SI.Time t0 = 1 "One second";
    parameter SI.MassFraction X[Types.nX] = Types.reference_X;
    Types.State state;
    SI.Temperature T;
    SI.Density rho;
  equation
    T = Tmin + time/t0*(Tmax - Tmin);
    state = Functions.setState_pTX(p,T,X);
    rho = Functions.density(state);
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(preserveAspectRatio=false)));
  end TestState;
end Tests;
