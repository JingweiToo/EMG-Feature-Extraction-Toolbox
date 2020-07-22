%-------------------------------------------------------------------------%
%  Electromyography (EMG) Feature Extraction source codes demo version    %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%

function MAV1=jMMAV(X)
N=length(X); Y=0;
for i=1:N
  if i >= 0.25*N && i <= 0.75*N
    w=1; 
  else
    w=0.5;
  end
  Y=Y+(w*abs(X(i)));
end
MAV1=(1/N)*Y;
end

