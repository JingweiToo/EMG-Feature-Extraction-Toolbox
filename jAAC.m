%-------------------------------------------------------------------------%
%  Electromyography (EMG) Feature Extraction source codes demo version    %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%

function AAC=jAAC(X)
N=length(X); Y=0;
for i=1:N-1
  Y=Y+abs(X(i+1)-X(i));
end
AAC=Y/N;
end

