# Code Book

## Overview

The [tidy_data_set.txt](./tidy_data_set.txt) file is a tidy subset of the data provided in the Human Activity Recognition Using Smartphones Data Set. This data set contains the average of each variable for each activity and each subject. There are 30 volunteers performed 6 different activities.  
Variables names and activities are described below.  
The source data is available from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

## Raw Data transformation
The raw data sets are processed with the script [run_analysis.R](./run_analysis.R) script to create a tidy data set.  
The steps perfomed are:  
1.  **Merge the training and the test sets to create one data set.** This analysis was performed using only the files above,and did not use the raw signal data. Therefore, the data files in the "Inertial Signals" folders were ignored.  (561 variable columns total, in the initial combined data set; 563 columns including the TestSubject and Activity columns, 10299 observations)  
2.  **Extract only the measurements on the mean and standard deviation for each measurement.**  
    (68 variable columns, 10299 observations)  
3.  **Use descriptive activity names to name the activities in the data set.**  
4.  **Appropriately label the data set with descriptive variable names.**  
    The details of the resulting descriptive names are below.
5.  **Create a tidy data set** from the previus data set is created a final tidy data set where numeric variables are averaged for each activity and each subject.  
    (68 variable columns, 180 observations)


## Data dictionary

The variables in this tidy data set are a subset of the variables described in the [features_info.txt](./UCI HAR Dataset/features_info.txt) file in the original data set. [features_info.txt](./UCI HAR Dataset/features_info.txt) provides a more in-depth overview of the original values and how they were calculated.

1. **SubjectID** - A factor that identifies the volunteer participant.
	>Values: integer from 1 to 30

2. **Activity** - A factor that identifies the activity being performed
	> Values: WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING

	***The feature variables below (#3 - #68) are each an average of the values collected for the test subject and activity specified in the data row. For each, the value is a numeric normalized and bounded within [-1, 1]***

3. **BodyAccelerationMeanXAxis** - The mean of the body acceleration on the X axis. 

4. **BodyAccelerationMeanYAxis** - The mean of the body acceleration on the Y axis.

5. **BodyAccelerationMeanZAxis** - The mean of the body acceleration on the Z axis.

6. **BodyAccelerationSDXAxis** - The standard deviation of the body acceleration on the X axis.

7. **BodyAccelerationSDYAxis** - The standard deviation of the body acceleration on the Y axis.

8. **BodyAccelerationSDZAxis** - The standard deviation of the body acceleration on the Z axis.

9. **GravityAccelerationMeanXAxis** - The mean of the gravity acceleration on the X axis.

10. **GravityAccelerationMeanYAxis** - The mean of the gravity acceleration on the Y axis.

11. **GravityAccelerationMeanZAxis** - The mean of the gravity acceleration on the Z axis.

12. **GravityAccelerationSDXAxis** - The standard deviation of the gravity acceleration on the X axis. 

13. **GravityAccelerationSDYAxis** - The standard deviation of the gravity acceleration on the Y axis.

14. **GravityAccelerationSDZAxis** - The standard deviation of the gravity acceleration on the Z axis.  

15. **BodyAccelerationJerkMeanXAxis** - The mean of the body acceleration on the X axis, derived in time to obtain Jerk signals. 

16. **BodyAccelerationJerkMeanYAxis** - The mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals.

17. **BodyAccelerationJerkMeanZAxis** - The mean of the body acceleration on the Z axis, derived in time to obtain Jerk signals.  

18. **BodyAccelerationJerkSDXAxis** - The standard deviation of the body acceleration on the X axis, derived in time to obtain Jerk signals. 

19. **BodyAccelerationJerkSDYAxis** - The standard deviation of the body acceleration on the Y axis, derived in time to obtain Jerk signals.

20. **BodyAccelerationJerkSDZAxis** - The standard deviation of the body acceleration on the Z axis, derived in time to obtain Jerk signals.

21. **BodyAngularVelocityMeanXAxis** - The mean of the body angular velocity on the X axis.

22. **BodyAngularVelocityMeanYAxis** - The mean of the body angular velocity on the Y axis.

23. **BodyAngularVelocityMeanZAxis** - The mean of the body angular velocity on the Z axis.

24. **BodyAngularVelocitySDXAxis** - The standard deviation of the body angular velocity on the X axis. 

25. **BodyAngularVelocitySDYAxis** - The standard deviation of the body angular velocity on the Y axis.

26. **BodyAngularVelocitySDZAxis** - The standard deviation of the body angular velocity on the Z axis.

27. **BodyAngularVelocityJerkMeanXAxis** - The mean of the body angular velocity on the X axis, derived in time to obtain Jerk signals.

28. **BodyAngularVelocityJerkMeanYAxis** - The mean of the body angular velocity on the Y axis, derived in time to obtain Jerk signals.

29. **BodyAngularVelocityJerkMeanZAxis** - The mean of the body angular velocity on the Z axis, derived in time to obtain Jerk signals.

30. **BodyAngularVelocityJerkSDXAxis** - The standard deviation of the body angular velocity on the X axis, derived in time to obtain Jerk signals. 

31. **BodyAngularVelocityJerkSDYAxis** - The standard deviation of the body angular velocity on the Y axis, derived in time to obtain Jerk signals.

32. **BodyAngularVelocityJerkSDZAxis** - The standard deviation of the body angular velocity on the Z axis, derived in time to obtain Jerk signals.

33. **BodyAccelerationMagnitudeMean** - The mean of the body acceleration magnitude, calculated using the Euclidean norm.

34. **BodyAccelerationMagnitudeSD** - The standard deviation of the body acceleration magnitude, calculated using the Euclidean norm.

35. **GravityAccelerationMagnitudeMean** - The mean of the gravity acceleration magnitude.

36. **GravityAccelerationMagnitudeSD** - The standard deviation of the gravity acceleration magnitude.

37. **BodyAccelerationJerkMagnitudeMean** - The mean of the body acceleration magnitude derived in time to obtain Jerk signals.

38. **BodyAccelerationJerkMagnitudeSD** - The standard deviation of the body acceleration magnitude derived in time to obtain Jerk signals.

39. **BodyAngularVelocityMagnitudeMean** - The mean of the angular velocity magnitude.

40. **BodyAngularVelocityMagnitudeSD** - The standard deviation of the angular velocity magnitude.

41. **BodyAngularVelocityJerkMagnitudeMean** - The mean of the angular velocity magnitude derived in time to obtain Jerk signals.

42. **BodyAngularVelocityJerkMagnitudeSD** - The standard deviation of the angular velocity magnitude derived in time to obtain Jerk signals.

43. **FFTBodyAccelerationMeanXAxis** - The mean of the body acceleration on the X axis, with a Fast Fourier Transform (FFT) applied. 

44. **FFTBodyAccelerationMeanYAxis** - The mean of the body acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.

45. **FFTBodyAccelerationMeanZAxis** - The mean of the body acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.

46. **FFTBodyAccelerationSDXAxis** - The standard deviation of the body acceleration on the X axis, with a Fast Fourier Transform (FFT) applied. 

47. **FFTBodyAccelerationSDYAxis** - The standard deviation of the body acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.

48. **FFTBodyAccelerationSDZAxis** - The standard deviation of the body acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.

49. **FFTBodyAccelerationJerkMeanXAxis** - The mean of the body acceleration on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied. 

50. **FFTBodyAccelerationJerkMeanYAxis** - The mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

51. **FFTBodyAccelerationJerkMeanZAxis** - The mean of the body acceleration on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

52. **FFTBodyAccelerationJerkSDXAxis** - The standard deviation of the body angular velocity on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied. 

53. **FFTBodyAccelerationJerkSDYAxis** - The standard deviation of the body angular velocity on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

54. **FFTBodyAccelerationJerkSDZAxis** - The standard deviation of the body angular velocity on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

55. **FFTBodyAngularVelocityMeanXAxis** - The mean of the body angular velocity on the X axis, with a Fast Fourier Transform (FFT) applied.

56. **FFTBodyAngularVelocityMeanYAxis** - The mean of the body angular velocity on the Y axis, with a Fast Fourier Transform (FFT) applied.

57. **FFTBodyAngularVelocityMeanZAxis** - The mean of the body angular velocity on the Z axis, with a Fast Fourier Transform (FFT) applied.

58. **FFTBodyAngularVelocitySDXAxis** - The standard deviation of the body angular velocity on the X axis, with a Fast Fourier Transform (FFT) applied. 

59. **FFTBodyAngularVelocitySDYAxis** - The standard deviation of the body angular velocity on the Y axis, with a Fast Fourier Transform (FFT) applied.

60. **FFTBodyAngularVelocitySDZAxis** - The standard deviation of the body angular velocity on the Z axis, with a Fast Fourier Transform (FFT) applied.

61. **FFTBodyAccelerationMagnitudeMean** - The mean of the body acceleration magnitude, with a Fast Fourier Transform (FFT) applied.

62. **FFTBodyAccelerationMagnitudeSD** - The standard deviation of the body acceleration magnitude, with a Fast Fourier Transform (FFT) applied.

63. **FFTBodyAccelerationJerkMagnitudeMean** - The mean of the body acceleration magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

64. **FFTBodyAccelerationJerkMagnitudeSD** - The standard deviation of the body acceleration magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

65. **FFTBodyAngularVelocityMagnitudeMean** - The mean of the angular velocity magnitude, with a Fast Fourier Transform (FFT) applied.

66. **FFTBodyAngularVelocityMagnitudeSD** - The standard deviation of the angular velocity magnitude, with a Fast Fourier Transform (FFT) applied.

67. **FFTBodyAngularVelocityJerkMagnitudeMean** - The mean of the angular velocity magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

68. **FFTBodyAngularVelocityJerkMagnitudeSD** - The standard deviation of the angular velocity magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

## Note - Variable naming

I updated the feature variable names in the tidy data to make it easier to understand the measurement of each column. The names use the following conventions:

- Either **Body** or **Gravity** is included to indicate the type of signal
- Either **Acceleration** or **AngularVelocity** is included to indicate the type of measurement. I replaced "Gyro" with "AngularVelocity" since that's what the gyroscope is measuring.
- The word(s) **Mean** or **SD** indicates the type of metric, **Mean** or **Standard Deviation**
- **XAxis**, **YAxis**, and **ZAxis** indicate a measurement for the X, Y, or Z axis.
- **Magnitude** indicates a magnitude calculation
- **Jerk** indicates a measure where the body linear acceleration and angular velocity were derived in time to obtain Jerk signals
- **FFT** is included, if applicable, to indicate that the measurement had a Fast Fourier Transform (FFT) applied. 

