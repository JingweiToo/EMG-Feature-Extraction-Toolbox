%[2018]-"Effect of threshold values on the combination of EMG time 
%domain features: Surface versus intramuscular EMG" (Table 1)

function CARD = jCardinality(X,opts)
% Parameter
thres = 0.01;    % threshold

if isfield(opts,'thres'), thres = opts.thres; end

N = length(X);
% Sort data
Y = sort(X);
Z = zeros(1, N-1);
for n = 1 : N - 1
  Z(n) = abs(Y(n) - Y(n+1)) > thres;
end
CARD = sum(Z);
end

