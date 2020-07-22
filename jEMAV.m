%-------------------------------------------------------------------------%
%  Electromyography (EMG) Feature Extraction source codes demo version    %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%

function EMAV=jEMAV(X)
L=length(X); Y=zeros(1,L);
for i=1:L
  if i >= 0.2*L && i <= 0.8*L
    p=0.75;
  else
    p=0.5;
  end
  Y(i)=abs((X(i))^p);
end
EMAV=mean(Y);
end

