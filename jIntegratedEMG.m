%[2012]-"Feature reduction and selection for EMG signal classification" 
%(1)

function IEMG = jIntegratedEMG(X,~)
IEMG = sum(abs(X));
end

