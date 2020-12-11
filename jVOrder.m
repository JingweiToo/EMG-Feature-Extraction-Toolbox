%[2012]-"Feature reduction and selection for EMG signal classification" 
%(12)

function VO = jVOrder(X,opts)
% Parameter
order = 2;     % order

if isfield(opts,'order'), order = opts.order; end

N  = length(X); 
Y  = (1 / N) * sum(X .^ order);
VO = Y ^ (1 / order); 
end

