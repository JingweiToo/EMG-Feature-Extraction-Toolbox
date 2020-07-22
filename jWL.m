%-------------------------------------------------------------------------%
%  Electromyography (EMG) Feature Extraction source codes demo version    %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%

function WL=jWL(X)
N=length(X); WL=0;
for i=2:N
  WL=WL+abs(X(i)-X(i-1));  
end
end

