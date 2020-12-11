%[2020]-"A Study of Computing Zero Crossing Methods and an Improved
%Proposal for EMG Signals" 

function FZC = jNewZeroCrossing(X,~)
L   = length(X); 
FZC = 0;
% Compute T (21)
T = 4 * ((1/10) * sum(X(1 : 10)));
% Compute proposed zero crossing (20)
for i = 1 : L - 1
  if (X(i) > T  &&  X(i+1) < T)  ||  (X(i) < T  &&  X(i+1) > T)
    FZC = FZC + 1;
  end
end
end

