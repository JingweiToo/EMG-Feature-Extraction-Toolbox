%[2010]-"Study of stability of time-domain features for
%electromyographic pattern recognition" (7)

function LD = jLogDetector(X,~)
N = length(X); 
Y = 0;
for k = 1:N
  Y = Y + log(abs(X(k))); 
end
LD = exp(Y / N);
end

