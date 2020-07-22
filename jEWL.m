%-------------------------------------------------------------------------%
%  Electromyography (EMG) Feature Extraction source codes demo version    %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%

function EWL=jEWL(X)
L=length(X); EWL=0;
for i=2:L
  if i >= 0.2*L && i <= 0.8*L
    p=0.75;
  else
    p=0.5;
  end
  EWL=EWL+abs((X(i)-X(i-1))^p); 
end
end

