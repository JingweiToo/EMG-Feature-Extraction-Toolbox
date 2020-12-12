%[2018]-Pattern recognition of electromyography signals based on novel
%time domain features for amputees’ limb motion classification" (1)

function ASS = jAbsoluteValueOfTheSummationOfSquareRoot(X,~)
temp = sum(X .^ (1/2));
ASS  = abs(temp);
end

