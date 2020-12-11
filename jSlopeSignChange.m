%[1993]-"A New Strategy for Multifunction Myoelectric Control" (4)

function SSC = jSlopeSignChange(X,opts)
% Parameter
thres = 0.01;    % threshold

if isfield(opts,'thres'), thres = opts.thres; end

N   = length(X); 
SSC = 0;
for k = 2 : N - 1
  if ((X(k) > X(k-1)  &&  X(k) > X(k+1))  ||  (X(k) < X(k-1)  && ...
      X(k) < X(k+1)))  &&  ((abs(X(k) - X(k+1)) >= thres)  || ...
      (abs(X(k) - X(k-1)) >= thres))
    
    SSC = SSC + 1; 
  end
end
end

