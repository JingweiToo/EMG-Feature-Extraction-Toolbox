%-------------------------------------------------------------------------%
%  Electromyography (EMG) Feature Extraction source codes demo version    %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%

function MYOP=jMYOP(X,thres)
N=length(X); Y=0; 
for i=1:N
  if abs(X(i)) >= thres
    Y=Y+1;
  end
end
MYOP=Y/N;
end

