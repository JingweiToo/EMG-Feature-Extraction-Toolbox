
function SD = jStandardDeviation(X,~)
N  = length(X); 
mu = mean(X); 
SD = sqrt((1 / (N - 1)) * sum((X - mu) .^ 2));
end

