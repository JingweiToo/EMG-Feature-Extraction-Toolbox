%[2020]-"Detecting Neuromuscular Disorders Using EMG Signals Based on
%TQWT Features" (6)

function MAD = jMeanAbsoluteDeviation(X,~)
N   = length(X);
% Mean value
mu  = mean(X);
% Mean absolute deviation 
MAD = (1 / N) * sum(abs(X - mu));
end

