%[2017]-"A framework of temporal-spatial descriptors based feature
%extraction for improved myoelectric pattern recognition" (11)

function LTKEO = jLogTeagerKaiserEnergyOperator(X,~)
N = length(X); 
Y = 0; 
for j = 2 : N - 1
  Y = Y + ((X(j) ^ 2) - X(j-1) * X(j+1));
end
LTKEO = log(Y);
end

