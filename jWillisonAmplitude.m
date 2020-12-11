%[2010]-"Study of stability of time-domain features for 
%electromyographic pattern recognition" (5)

function WA = jWillisonAmplitude(X,opts)
% Parameter
thres = 0.01;    % threshold

if isfield(opts,'thres'), thres = opts.thres; end

N  = length(X); 
WA = 0; 
for k = 1 : N - 1 
  if abs(X(k) - X(k+1)) > thres
    WA = WA + 1; 
  end
end
end

