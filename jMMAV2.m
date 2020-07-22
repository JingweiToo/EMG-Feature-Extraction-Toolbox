%-------------------------------------------------------------------------%
%  Electromyography (EMG) Feature Extraction source codes demo version    %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%

function MMAV2=jMMAV2(X)
N=length(X); Y=0;
for i=1:N
  if i >= 0.25*N && i <= 0.75*N
    w=1;
  elseif i < 0.25*N
    w=(4*i)/N;
  else
    w=4*(i-N)/N;
  end
  Y=Y+(w*abs(X(i)));
end
MMAV2=(1/N)*Y;
end

