%[2012]-"Fractal analysis features for weak and single-channel 
%upper-limb EMG signals" (6)

function MFL = jMaximumFractalLength(X,~)
N = length(X);
Y = 0;
for n = 1 : N - 1
  Y = Y + (X(n+1) - X(n)) ^ 2;
end
MFL = log10(sqrt(Y));
end

