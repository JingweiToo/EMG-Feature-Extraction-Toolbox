%  Electromyography (EMG) Feature Extraction toolbox

%---Input-------------------------------------------------------------
% X    : EMG signal (1 x samples)
% opts : parameter settings
% 

%---Output------------------------------------------------------------
% feat:  Feature vector 
%---------------------------------------------------------------------


%% Generate a sample random signal X
fs = 1000;            % Sampling frequency 
Ts = 1 / fs;          % Period
t  = 0 : Ts : 0.25; 
X  = 0.01 * (cos(2 * pi * fs * t) + randn(1, length(t)));

% Plot sample signal
plot(t,X);  grid on
xlabel('Number of samples');
ylabel('Amplitude');


%% Example 1 : Extract 5 normal features (without parameters) 
% Generate a sample random signal X
fs = 1000;            % Sampling frequency 
Ts = 1 / fs;          % Period
t  = 0 : Ts : 0.25; 
X  = 0.01 * (cos(2 * pi * fs * t) + randn(1, length(t)));

% Enhanced Mean Absolute Value
f1 = jfemg('emav', X); 
% Average Amplitude Change
f2 = jfemg('aac', X); 
% Waveform Length
f3 = jfemg('wl', X); 
% Maximum Fractal Length 
f4 = jfemg('mfl', X); 
% Root Mean Square
f5 = jfemg('rms', X); 

% Feature vector
feat = [f1, f2, f3, f4, f5];


%% Example 2 : Extract 3 features with parameter   
% Generate a sample random signal X
fs = 1000;            % Sampling frequency 
Ts = 1 / fs;          % Period
t  = 0 : Ts : 0.25; 
X  = 0.01 * (cos(2 * pi * fs * t) + randn(1, length(t)));

% Generate a sample random signal X
fs = 1000;            % Sampling frequency 
Ts = 1 / fs;          % Period
t  = 0 : Ts : 0.25; 
X  = 0.01 * (cos(2 * pi * fs * t) + randn(1, length(t)));

% Zeros Crossing
opts.thres = 0.01;
f1 = jfemg('zc', X, opts); 
% Slope Sign Change
opts.thres = 0.01;
f2 = jfemg('ssc', X, opts);
% Temporal Moment
opts.order = 3;
f3 = jfemg('tm', X, opts);

% Feature vector
feat = [f1, f2, f3];

