%[2016]-"Surface electromyography based muscle fatigue progression 
%analysis using modified B distribution time–frequency features" (20)

function COV = jCoefficientOfVariation(X,~)
COV = std(X) / mean(X);  
end