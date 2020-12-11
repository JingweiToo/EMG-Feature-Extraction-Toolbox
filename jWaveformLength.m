%[1993]-"A New Strategy for Multifunction Myoelectric Control" (5)

function WL = jWaveformLength(X,~)
N  = length(X); 
WL = 0;
for k = 2:N
  WL = WL + abs(X(k) - X(k-1)); 
end
end

