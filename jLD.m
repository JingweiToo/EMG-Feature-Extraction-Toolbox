%-------------------------------------------------------------------------%
%  Electromyography (EMG) Feature Extraction source codes demo version    %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%

function LD=jLD(X)
N=length(X); Y=0;
for k=1:N
  Y=Y+log(abs(X(k))); 
end
LD=exp(Y/N);
end

