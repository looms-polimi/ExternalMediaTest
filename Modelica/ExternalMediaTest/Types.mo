within ExternalMediaTest;
package Types
  constant Integer nX = 2;
  constant SI.MassFraction reference_X[2] = {0.3, 0.7};

  record State
    SI.Pressure p;
    SI.Temperature T;
    SI.SpecificEnthalpy h;
    SI.MassFraction X[nX];
  end State;
end Types;
