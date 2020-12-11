%[2010]-"Study of stability of time-domain features for electromyographic
%pattern recognition" (6)

function VAR = jVarianceOfEMG(X,~)
N   = length(X); 
VAR = (1 / (N - 1)) * sum(X .^ 2);
end
