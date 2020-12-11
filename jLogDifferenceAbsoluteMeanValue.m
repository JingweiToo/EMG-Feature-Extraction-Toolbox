%[2014]-"Feature extraction of the first difference of EMG time series
%for EMG pattern recognition" (7)

function LDAMV = jLogDifferenceAbsoluteMeanValue(X,~)
N = length(X); 
Y = 0;
for t = 1 : N - 1
  Y = Y + abs((X(t+1) - X(t)));
end
LDAMV = log(Y / N);
end

