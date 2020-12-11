%[2011]-"2011 Comparison of k-nearest neighbor, quadratic discriminant 
%and linear discriminant analysis in classification of electromyogram 
%signals based on the wrist-motion directions" (9)

function RMS = jRootMeanSquare(X,~)
RMS = sqrt(mean(X .^ 2));
end

