
function VAR = jVariance(X,~)
N   = length(X); 
mu  = mean(X);
VAR = (1 / (N - 1)) * sum((X - mu) .^ 2);
end
