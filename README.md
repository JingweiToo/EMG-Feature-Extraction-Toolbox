# Jx-EMGT : Electromyography ( EMG ) Feature Extraction Toolbox

[![View EMG Feature Extraction Toolbox on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/71514-emg-feature-extraction-toolbox)
[![License](https://img.shields.io/badge/license-BSD_3-yellow.svg)](https://github.com/JingweiToo/EMG-Feature-Extraction-Toolbox/blob/master/LICENSE)
[![GitHub release](https://img.shields.io/badge/release-1.4-green.svg)](https://github.com/JingweiToo/EMG-Feature-Extraction-Toolbox)

---
> "Toward Talent Scientist: Sharing and Learning Together"
>  --- [Jingwei Too](https://jingweitoo.wordpress.com/)
---

![Wheel](https://www.mathworks.com/matlabcentral/mlc-downloads/downloads/db6a0e07-32ec-4811-b2f8-55a80e53165e/23065655-7c83-43ba-93d5-2f4ad98c54a7/images/screenshot.PNG)


## Introduction

* This toolbox offers 40 types of EMG features 
* The `A_Main` file demos how the feature extraction methods can be applied using generated sample signal. 


## Input
* *`X`*     : signal ( 1 *x* samples )
* *`opts`*  : parameter settings ( some methods have parameters: refer [here](/README.md#list-of-available-feature-extraction-methods) )


## Output
* *`feat`* : feature vector ( you may use other name like *f1* or etc. ) 
    
    
## Usage
The main function `jfemg` is adopted to perform feature extraction. You may switch the method by changing the `'mav'` to [other abbreviations](/README.md#list-of-available-feature-extraction-methods)
* If you wish to extract mean absolute value ( MAV ) then you may write
```code
feat = jfemg('mav', X);
```
* If you want to extract enhanced wavelenght ( EWL ) then you may write
```code
feat = jfemg('ewl', X);
```


### Example 1 : Extract 5 normal features ( without parameter )
```code 
% Generate a sample random signal X
fs = 1000;            % Sampling frequency 
Ts = 1 / fs;          % Period
t  = 0 : Ts : 0.25; 
X  = 0.01 * (cos(2 * pi * fs * t) + randn(1, length(t)));

% Plot sample signal
plot(t,X);  grid on
xlabel('Number of samples');
ylabel('Amplitude');

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

% Display features
disp(feat)
```


### Example 2 : Extract 3 features with parameter    
```code
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

% Display features
disp(feat)
```


## List of available feature extraction methods
* Some methods contain parameter to be adjusted. If you do not set the parameter then the feature will be extracted using default setting
* For convenience, you may extract the feature with parameter using default setting as following. That is, you don't have to set the *`opts`* 
```code
feat = jfemg('zc', X);
```
* You can use *`opts`* to set the parameter
    + *`thres`* : threshold
    + *`order`* : the number of orders


| No. | Abbreviation | Name                                         |  Parameter ( default )  |
|-----|--------------|----------------------------------------------|-------------------------|
| 40  | `'emav'`     | Enhanced Mean absolute value                 | -                       |
| 39  | `'ewl'`      | Enhanced Wavelength                          | -                       |
| 38  | `'fzc'`      | New Zero Crossing                            | -                       |
| 37  | `'asm'`      | Absolute Value of Summation of *exp* root    | -                       |
| 36  | `'ass'`      | Absolute Value of Summation of Square Root   | -                       |
| 35  | `'msr'`      | Mean Value of Square Root                    | -                       |
| 34  | `'ltkeo'`    | Log Teager Kaiser Energy Operator            | -                       |
| 33  | `'lcov'`     | Log Coefficient of Variation                 | -                       |
| 32  | `'card'`     | Cardinality                                  | opts.thres = 0.01       |
| 31  | `'ldasdv'`   | Log Difference Absolute Standard Deviation   | -                       |
| 30  | `'ldamv'`    | Log Difference Absolute Mean Value           | -                       |
| 29  | `'dvarv'`    | Difference Variance Value                    | -                       |
| 28  | `'vo'`       | V-Order                                      | opts.order = 2          |
| 27  | `'tm'`       | Temporal Moment                              | opts.order = 3          |
| 26  | `'damv'`     | Difference Absolute Mean Value               | -                       |
| 25  | `'ar'`       | Auto-Regressive Model                        | opts.order = 4          |
| 24  | `'mad'`      | Mean Absolute Deviation                      | -                       |
| 23  | `'iqr'`      | Interquartile Range                          | -                       |
| 22  | `'skew'`     | Skewness                                     | -                       |
| 21  | `'kurt'`     | Kurtosis                                     | -                       |
| 20  | `'cov'`      | Coefficient of Variation                     | -                       |
| 19  | `'sd'`       | Standard Deviation                           | -                       |
| 18  | `'var'`      | Variance                                     | -                       |
| 17  | `'ae'`       | Average Energy                               | -                       |
| 16  | `'iemg'`     | Integrated EMG                               | -                       |
| 15  | `'mav'`      | Mean Absolute Value                          | -                       |
| 14  | `'ssc'`      | Slope Sign Change                            | opts.thres = 0.01       |
| 13  | `'zc'`       | Zero Crossing                                | opts.thres = 0.01       |
| 12  | `'wl'`       | Waveform Length                              | -                       |
| 11  | `'rms'`      | Root Mean Square                             | -                       |
| 10  | `'aac'`      | Average Amplitude Change                     | -                       |
| 09  | `'dasdv'`    | Difference Absolute Standard Deviation Value | -                       |
| 08  | `'ld'`       | Log Detector                                 | -                       |
| 07  | `'mmav'`     | Modified Mean Absolute Value                 | -                       |
| 06  | `'mmav2'`    | Modified Mean Absolute Value 2               | -                       |
| 05  | `'myop'`     | Myopulse Percentage Rate                     | opts.thres = 0.016      |
| 04  | `'ssi'`      | Simple Square Integral                       | -                       |
| 03  | `'vare'`     | Variance of EMG                              | -                       |
| 02  | `'wa'`       | Willison Amplitude                           | opts.thres = 0.01       |
| 01  | `'mfl'`      | Maximum Fractal Length                       | -                       |


## Cite As
```code 
@article{too2019classification,
  title={Classification of hand movements based on discrete wavelet transform and enhanced feature extraction},
  author={Too, Jingwei and Abdullah, Abdul Rahim and Saad, Norhashimah Mohd},
  journal={International Journal of Advanced Computer Science and Applications},
  volume={10},
  number={6},
  pages={83--89},
  year={2019}
}


@article{too2019emg,
  title={EMG feature selection and classification using a Pbest-guide binary particle swarm optimization},
  author={Too, Jingwei and Abdullah, Abdul Rahim and Mohd Saad, Norhashimah and Tee, Weihown},
  journal={Computation},
  volume={7},
  number={1},
  pages={12},
  year={2019},
  publisher={Multidisciplinary Digital Publishing Institute}
}
```

