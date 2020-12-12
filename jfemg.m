% Feature Extraction Toolbox by Jingwei Too 

function feat = jfemg(type,X,opts)
switch type
  case 'fzc'    ; fun = @jNewZeroCrossing;
  case 'ewl'    ; fun = @jEnhancedWaveLength;
  case 'emav'   ; fun = @jEnhancedMeanAbsoluteValue;    
  case 'asm'    ; fun = @jAbsoluteValueOfTheSummationOfExpRoot;
  case 'ass'    ; fun = @jAbsoluteValueOfTheSummationOfSquareRoot;
  case 'msr'    ; fun = @jMeanValueOfTheSquareRoot;
  case 'ltkeo'  ; fun = @jLogTeagerKaiserEnergyOperator; 
  case 'lcov'   ; fun = @jLogCoefficientOfVariation;
  case 'card'   ; fun = @jCardinality;   
  case 'ldasdv' ; fun = @jLogDifferenceAbsoluteStandardDeviationValue;
  case 'ldamv'  ; fun = @jLogDifferenceAbsoluteMeanValue;
  case 'dvarv'  ; fun = @jDifferenceVarianceValue;   
  case 'mfl'    ; fun = @jMaximumFractalLength; 
  case 'myop'   ; fun = @jMyopulsePercentageRate; 
  case 'ssi'    ; fun = @jSimpleSquareIntegral;
  case 'vo'     ; fun = @jVOrder; 
  case 'tm'     ; fun = @jTemporalMoment; 
  case 'aac'    ; fun = @jAverageAmplitudeChange;
  case 'mmav'   ; fun = @jModifiedMeanAbsoluteValue;
  case 'mmav2'  ; fun = @jModifiedMeanAbsoluteValue2;     
  case 'iemg'   ; fun = @jIntegratedEMG;
  case 'dasdv'  ; fun = @jDifferenceAbsoluteStandardDeviationValue;
  case 'damv'   ; fun = @jDifferenceAbsoluteMeanValue;
  case 'rms'    ; fun = @jRootMeanSquare; 
  case 'vare'   ; fun = @jVarianceOfEMG; 
  case 'wa'     ; fun = @jWillisonAmplitude; 
  case 'ld'     ; fun = @jLogDetector;
  case 'ar'     ; fun = @jAutoRegressiveModel;
  case 'mav'    ; fun = @jMeanAbsoluteValue;
  case 'zc'     ; fun = @jZeroCrossing; 
  case 'ssc'    ; fun = @jSlopeSignChange; 
  case 'wl'     ; fun = @jWaveformLength;
  case 'mad'    ; fun = @jMeanAbsoluteDeviation;
  case 'iqr'    ; fun = @jInterquartileRange;       
  case 'kurt'   ; fun = @jKurtosis;
  case 'skew'   ; fun = @jSkewness; 
  case 'cov'    ; fun = @jCoefficientOfVariation;
  case 'sd'     ; fun = @jStandardDeviation;
  case 'var'    ; fun = @jVariance; 
  case 'ae'     ; fun = @jAverageEnergy;
end
if nargin < 3
  opts = [];  
end
feat = fun(X,opts);
end

