%[2011]-"2011 Comparison of k-nearest neighbor, quadratic discriminant 
%and linear discriminant analysis in classification of electromyogram 
%signals based on the wrist-motion directions" (8)

function DASDV = jDifferenceAbsoluteStandardDeviationValue(X,~)
N = length(X); 
Y = 0;
for i = 1 : N - 1
  Y = Y + (X(i+1) - X(i)) ^ 2;
end
DASDV = sqrt(Y / (N - 1));
end

