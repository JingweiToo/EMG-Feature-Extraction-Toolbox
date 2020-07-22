%-------------------------------------------------------------------------%
%  Electromyography (EMG) Feature Extraction source codes demo version    %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%


%---Input------------------------------------------------------------------
% X:     EMG signal (1 x samples)
% thres: Threshold value
%---Output-----------------------------------------------------------------
% f:     Feature
% feat:  Feature vector 
%--------------------------------------------------------------------------

%% Generate Signal
clc, clear, close
% Generate a sample random signal 
f=1000; % Sampling frequency 
Ts=1/f; % Period
t=0:Ts:0.25; 
X=0.01*(cos(2*pi*f*t)+randn(1,length(t))); % Signal
% Plot sample signal
plot(t,X); xlabel('Number of samples'); ylabel('Voltage (mV)'); grid on;


%% Feature Extraction
% (1) Enhanced Mean absolute value
f1=jEMAV(X); 
% (2) Enhanced Wavelength
f2=jEWL(X); 
% (3) Mean absolute value
f3=jMAV(X); 
% (4) Wavelength
f4=jWL(X); 
% (5) Zeros Crossing
thres=0.01; f5=jZC(X,thres); 
% (6) Slope Sign Change
thres=0.01; f6=jSSC(X,thres);
% (7) Root Mean Square
f7=jRMS(X);
% (8) Average Amplitude Change
f8=jAAC(X);
% (9) Difference Absolute Standard Deviation Value
f9=jDASDV(X);
% (10) Log Detector
f10=jLD(X);
% (11) Modified Mean Absolute Value
f11=jMMAV(X);
% (12) Modified Mean Absolute Value 2
f12=jMMAV2(X);
% (13) Myopulse Percentage Rate 
thres=0.016; f13=jMYOP(X,thres);
% (14) Simple Square Integral 
f14=jSSI(X);
% (15) Variance of EMG 
f15=jVAR(X);
% (16) Willison Amplitude
thres=0.01; f16=jWAMP(X,thres);
% (17) Maximum Fractal length 
f17=jMFL(X);

% Feature vector
feat=[f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15,f16,f17];






