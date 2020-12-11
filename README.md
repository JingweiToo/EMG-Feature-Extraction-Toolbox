# EMG Feature Extraction Toolbox

* This toolbox offers 17 types of EMG features 
* The "Main" demos how the feature extraction methods can be applied by using the generated sample signal. 


## List of available feature extraction methods

| No. | Abbreviation | Name                                         |  Parameter ( default )  |
|-----|--------------|----------------------------------------------|-------------------------|
| 19  | 
| 18  | 'iemg'       | Integrated EMG                               | -                       |
| 17  | 'emav'       | Enhanced Mean absolute value                 | -                       |
| 16  | 'ewl'        | Enhanced Wavelength                          | -                       |
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
| 03  | 'var'        | Variance of EMG                              | -                       |
| 02  | 'wa'         | Willison Amplitude                           | -                       |
| 01  | 'mfl'        | Maximum Fractal Length                       | -                       |


## Contributions 

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
