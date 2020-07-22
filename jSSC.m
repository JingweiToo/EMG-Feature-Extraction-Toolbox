%-------------------------------------------------------------------------%
%  Electromyography (EMG) Feature Extraction source codes demo version    %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%

function SSC=jSSC(X,thres)
N=length(X); SSC=0;
for i=2:N-1
  if ((X(i) > X(i-1) && X(i) > X(i+1)) || (X(i) < X(i-1) && X(i) < X(i+1))) ...
      && ((abs(X(i)-X(i+1)) >= thres) || (abs(X(i)-X(i-1)) >= thres))
    SSC=SSC+1; 
  end
end
end


