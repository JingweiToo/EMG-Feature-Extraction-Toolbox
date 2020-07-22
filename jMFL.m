%-------------------------------------------------------------------------%
%  Electromyography (EMG) Feature Extraction source codes demo version    %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%

function MFL=jMFL(X)
N=length(X); Y=0;
for n=1:N-1
  Y=Y+(X(n+1)-X(n))^2;
end
MFL=log(sqrt(Y));
end

