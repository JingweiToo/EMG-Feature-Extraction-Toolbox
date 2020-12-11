%[2012]-"Classification of EMG signals using combined features and 
%soft computing techniques" (1-2)

function AR = jAutoRegressiveModel(X,opts)
% Parameter
order = 4;    % order

if isfield(opts,'order'), order = opts.order; end

Y  = arburg(X,order); 
% First index is meaningless
AR = Y(2 : order + 1); 
end

