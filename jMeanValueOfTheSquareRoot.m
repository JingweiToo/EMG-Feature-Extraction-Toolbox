%[2018]-Pattern recognition of electromyography signals based on novel 
%time domain features for amputees’ limb motion classification" (2)

function MSR = jMeanValueOfTheSquareRoot(X,~)
K   = length(X); 
MSR = (1 / K) * sum(X .^ (1/2));
end

