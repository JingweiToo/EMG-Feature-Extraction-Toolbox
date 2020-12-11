%[2011]-"Comparison of k-nearest neighbor, quadratic discriminant and
%linear discriminant analysis in classification of electromyogram 
%signals based on wrist motion directions" (5)

function DAMV = jDifferenceAbsoluteMeanValue(X,~)
N = length(X); 
Y = 0;
for i = 1 : N - 1
  Y = Y + abs(X(i+1) - X(i));
end
DAMV = Y / (N - 1);
end


