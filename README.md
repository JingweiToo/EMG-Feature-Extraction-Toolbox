# EMG Feature Extraction Toolbox

---
> "Toward Talent Scientist: Sharing and Learning Together"
>  --- [Jingwei Too](https://jingweitoo.wordpress.com/)
---

![Wheel](https://www.mathworks.com/matlabcentral/mlc-downloads/downloads/db6a0e07-32ec-4811-b2f8-55a80e53165e/23065655-7c83-43ba-93d5-2f4ad98c54a7/images/screenshot.PNG)


## Introduction

* This toolbox offers 40 types of EMG features 
* The < A_Main.m file > demos how the feature extraction methods can be applied using generated sample signal. 


## Input
* X     : EMG signal ( 1 x samples )
* opts  : parameter settings ( some methods have parameters: refer [here](/README.md#list-of-available-feature-extraction-methods)


## Output
* feat : feature vector 
    
    
## Usage
The main function *jfemg* is adopted to perform feature extraction. You may switch the method by changing the 'mav' to [other abbreviations](/README.md#list-of-available-feature-extraction-methods)
* If you wish to extract mean absolute value then you may write
```code
feat = jfemg('mav', X);
```
* If you want to extract zero crossing then you may write
```code
feat = jfemg('zc', X ,opts);
```


## Contribution

Please consider citing my papers if you found this toolbox is useful

```code 
@article{too2019classification,
  title={Classification of hand movements based on discrete wavelet transform and enhanced feature extraction},
  author={Too, Jingwei and Abdullah, Abdul Rahim and Saad, Norhashimah Mohd},
  journal={Int. J. Adv. Comput. Sci. Appl},
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


### Example 1 :  
```code 
% Common parameter settings
opts.k  = 5;      % Number of k in K-nearest neighbor
opts.N  = 10;     % number of solutions
opts.T  = 100;    % maximum number of iterations
% Parameters of PSO
opts.c1 = 2;
opts.c2 = 2;
opts.w  = 0.9;

% Load dataset
load ionosphere.mat;

% Ratio of validation data
ho = 0.2;
% Divide data into training and validation sets
HO = cvpartition(label,'HoldOut',ho); 
opts.Model = HO; 

% Perform feature selection 
FS = jfs('pso',feat,label,opts);

% Define index of selected features
sf_idx = FS.sf;

% Accuracy  
Acc = jknn(feat(:,sf_idx),label,opts); 

% Plot convergence
plot(FS.c); grid on; xlabel('Number of Iterations'); ylabel('Fitness Value'); title('PSO');

```


## List of available feature extraction methods

| No. | Abbreviation | Name                                         |  Parameter ( default )  |
|-----|--------------|----------------------------------------------|-------------------------|
| 40  | 'emav'       | Enhanced Mean absolute value                 | -                       |
| 39  | 'ewl'        | Enhanced Wavelength                          | -                       |
| 38  | 'fzc'        | New Zero Crossing                            | -                       |
| 37  | 'ass'        | Absolute Value Of The Summation              | -                       |
| 36  | 'asm'        | Absolute Value Of Summation Of Square Root   | -                       |
| 35  | 'msr'        | Mean Value Of The Square Root                | -                       |
| 34  | 'ltkeo'      | Log Teager Kaiser Energy Operator            | -                       |
| 33  | 'lcov'       | Log Coefficient Of Variation                 | -                       |
| 32  | 'card'       | Cardinality                                  | opts.thres = 0.01       |
| 31  | 'ldasdv'     | Log Difference Absolute Standard Deviation   | -                       |
| 30  | 'ldamv'      | Log Difference Absolute Mean Value           | -                       |
| 29  | 'dvarv'      | Difference Variance Value                    | -                       |
| 28  | 'vo'         | V-Order                                      | opts.order = 2          |
| 27  | 'tm'         | Temporal Moment                              | opts.order = 3          |
| 26  | 'damv'       | Difference Absolute Mean Value               | -                       |
| 25  | 'ar'         | Auto-Regressive Model                        | opts.order = 4          |
| 24  | 'mad'        | Mean Absolute Deviation                      | -                       |
| 23  | 'iqr'        | Interquartile Range                          | -                       |
| 22  | 'skew'       | Skewness                                     | -                       |
| 21  | 'kurt'       | Kurtosis                                     | -                       |
| 20  | 'cov'        | Coefficient Of Variation                     | -                       |
| 19  | 'sd'         | Standard Deviation                           | -                       |
| 18  | 'var'        | Variance                                     | -                       |
| 17  | 'ae'         | Average Energy                               | -                       |
| 16  | 'iemg'       | Integrated EMG                               | -                       |
| 15  | 'mav'        | Mean Absolute Value                          | -                       |
| 14  | 'ssc'        | Slope Sign Change                            | opts.thres = 0.01       |
| 13  | 'zc'         | Zero Crossing                                | opts.thres = 0.01       |
| 12  | 'wl'         | Waveform Length                              | -                       |
| 11  | 'rms'        | Root Mean Square                             | -                       |
| 10  | 'aac'        | Average Amplitude Change                     | -                       |
| 09  | 'dasdv'      | Difference Absolute Standard Deviation Value | -                       |
| 08  | 'ld'         | Log Detector                                 | -                       |
| 07  | 'mmav'       | Modified Mean Absolute Value                 | -                       |
| 06  | 'mmav2'      | Modified Mean Absolute Value 2               | -                       |
| 05  | 'myop'       | Myopulse Percentage Rate                     | opts.thres = 0.016      |
| 04  | 'ssi'        | Simple Square Integral                       | -                       |
| 03  | 'vare'       | Variance of EMG                              | -                       |
| 02  | 'wa'         | Willison Amplitude                           | opts.thres = 0.01       |
| 01  | 'mfl'        | Maximum Fractal Length                       | -                       |



