%[2018]-Pattern recognition of electromyography signals based on novel
%time domain features for amputees’ limb motion classification" (3)

function ASM = jAbsoluteValueOfTheSummationOfExpRoot(X,~)
K = length(X); 
Y = 0; 
for n = 1:K
  if n >= 0.25 * K  &&  n <= 0.75 * K
    exp = 0.5;
  else
    exp = 0.75;
  end
  Y = Y + (X(n) ^ exp);
end
ASM = abs(Y / K);
end

