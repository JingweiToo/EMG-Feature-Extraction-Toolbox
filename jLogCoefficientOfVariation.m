%[2017]-"A framework of temporal-spatial descriptors based feature
%extraction for improved myoelectric pattern recognition" (10)

function LCOV = jLogCoefficientOfVariation(X,~)
mu   = mean(X); 
sd   = std(X);
LCOV = log(sd / mu);
end

