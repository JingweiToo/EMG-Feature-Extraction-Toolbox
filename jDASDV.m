%-------------------------------------------------------------------------%
%  Electromyography (EMG) Feature Extraction source codes demo version    %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%

function DASDV=jDASDV(X)
N=length(X); Y=0;
for i=1:N-1
  Y=Y+(X(i+1)-X(i))^2;
end
DASDV=sqrt(Y/(N-1));
end

