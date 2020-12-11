%[2019]-"Classification of Hand Movements based on Discrete Wavelet
%Transform and Enhanced Feature Extraction" (17)

function EMAV = jEnhancedMeanAbsoluteValue(X,~)
L = length(X); 
Y = 0;
for i = 1:L
  if i >= 0.2 * L  &&  i <= 0.8 * L
    p = 0.75;
  else
    p = 0.5;
  end
  Y = Y + abs(X(i) ^ p);
end
EMAV = Y / L;
end

