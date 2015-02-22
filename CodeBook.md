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
	> Values: Walking, WalkingUpStairs, WalkingDownStairs, Sitting, Standing, Lying

	***The feature variables below (#3 - #68) are each an average of the values collected for the test subject and activity specified in the data row. For each, the value is a numeric normalized and bounded within [-1, 1]***

3. **BodyAccelerationMeanXAxis** - The mean of the body acceleration on the X axis. 

4. **BodyAccelerationMeanYAxis** - The mean of the body acceleration on the Y axis.

5. **BodyAccelerationMeanZAxis** - The mean of the body acceleration on the Z axis.

6. **GravityAccelerationMeanXAxis** - The mean of the gravity acceleration on the X axis. 

7. **GravityAccelerationMeanYAxis** - The mean of the gravity acceleration on the Y axis.

8. **GravityAccelerationMeanZAxis** - The mean of the gravity acceleration on the Z axis.

9. **BodyAccelerationJerkMeanXAxis** - The mean of the body acceleration on the X axis, derived in time to obtain Jerk signals. 

10. **MeanBodyAccelerationJerkYAxis** - The mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals.

11. **MeanBodyAccelerationJerkZAxis** - The mean of the body acceleration on the Z axis, derived in time to obtain Jerk signals.

12. **MeanBodyAngularVelocityXAxis** - The mean of the body angular velocity on the X axis.

13. **MeanBodyAngularVelocityYAxis** - The mean of the body angular velocity on the Y axis.

14. **MeanBodyAngularVelocityZAxis** - The mean of the body angular velocity on the Z axis.

15. **MeanBodyAngularVelocityJerkXAxis** - The mean of the body angular velocity on the X axis, derived in time to obtain Jerk signals.

16. **MeanBodyAngularVelocityJerkYAxis** - The mean of the body angular velocity on the Y axis, derived in time to obtain Jerk signals.

17. **MeanBodyAngularVelocityJerkZAxis** - The mean of the body angular velocity on the Z axis, derived in time to obtain Jerk signals.

18. **MeanBodyAccelerationMagnitude** - The mean of the body acceleration magnitude, calculated using the Euclidean norm.

19. **MeanGravityAccelerationMagnitude** - The mean of the gravity acceleration magnitude.

20. **MeanBodyAccelerationJerkMagnitude** - The mean of the body acceleration magnitude derived in time to obtain Jerk signals.

21. **MeanBodyAngularVelocityMagnitude** - The mean of the angular velocity magnitude.

22. **MeanBodyAngularVelocityJerkMagnitude** - The mean of the angular velocity magnitude derived in time to obtain Jerk signals.

23. **MeanFFTBodyAccelerationXAxis** - The mean of the body acceleration on the X axis, with a Fast Fourier Transform (FFT) applied. 

24. **MeanFFTBodyAccelerationYAxis** - The mean of the body acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.

25. **MeanFFTBodyAccelerationZAxis** - The mean of the body acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.

26. **MeanFFTBodyAccelerationJerkXAxis** - The mean of the body acceleration on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied. 

27. **MeanFFTBodyAccelerationJerkYAxis** - The mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

28. **MeanFFTBodyAccelerationJerkZAxis** - The mean of the body acceleration on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

29. **MeanFFTBodyAngularVelocityXAxis** - The mean of the body angular velocity on the X axis, with a Fast Fourier Transform (FFT) applied.

30. **MeanFFTBodyAngularVelocityYAxis** - The mean of the body angular velocity on the Y axis, with a Fast Fourier Transform (FFT) applied.

31. **MeanFFTBodyAngularVelocityZAxis** - The mean of the body angular velocity on the Z axis, with a Fast Fourier Transform (FFT) applied.

32. **MeanFFTBodyAccelerationMagnitude** - The mean of the body acceleration magnitude, with a Fast Fourier Transform (FFT) applied.

33. **MeanFFTBodyAccelerationJerkMagnitude** - The mean of the body acceleration magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

34. **MeanFFTBodyAngularVelocityMagnitude** - The mean of the angular velocity magnitude, with a Fast Fourier Transform (FFT) applied.

35. **MeanFFTBodyAngularVelocityJerkMagnitude** - The mean of the angular velocity magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

36. **StandardDeviationBodyAccelerationXAxis** - The standard deviation of the body acceleration on the X axis. 

37. **StandardDeviationBodyAccelerationYAxis** - The standard deviation of the body acceleration on the Y axis.

38. **StandardDeviationBodyAccelerationZAxis** - The standard deviation of the body acceleration on the Z axis.

39. **StandardDeviationGravityAccelerationXAxis** - The standard deviation of the gravity acceleration on the X axis. 

40. **StandardDeviationGravityAccelerationYAxis** - The standard deviation of the gravity acceleration on the Y axis.

41. **StandardDeviationGravityAccelerationZAxis** - The standard deviation of the gravity acceleration on the Z axis.

42. **StandardDeviationBodyAccelerationJerkXAxis** - The standard deviation of the body acceleration on the X axis, derived in time to obtain Jerk signals. 

43. **StandardDeviationBodyAccelerationJerkYAxis** - The standard deviation of the body acceleration on the Y axis, derived in time to obtain Jerk signals.

44. **StandardDeviationBodyAccelerationJerkZAxis** - The standard deviation of the body acceleration on the Z axis, derived in time to obtain Jerk signals.

45. **StandardDeviationBodyAngularVelocityXAxis** - The standard deviation of the body angular velocity on the X axis. 

46. **StandardDeviationBodyAngularVelocityYAxis** - The standard deviation of the body angular velocity on the Y axis.

47. **StandardDeviationBodyAngularVelocityZAxis** - The standard deviation of the body angular velocity on the Z axis.

48. **StandardDeviationBodyAngularVelocityJerkXAxis** - The standard deviation of the body angular velocity on the X axis, derived in time to obtain Jerk signals. 

49. **StandardDeviationBodyAngularVelocityJerkYAxis** - The standard deviation of the body angular velocity on the Y axis, derived in time to obtain Jerk signals.

50. **StandardDeviationBodyAngularVelocityJerkZAxis** - The standard deviation of the body angular velocity on the Z axis, derived in time to obtain Jerk signals.

51. **StandardDeviationBodyAccelerationMagnitude** - The standard deviation of the body acceleration magnitude, calculated using the Euclidean norm.

52. **StandardDeviationGravityAccelerationMagnitude** - The standard deviation of the gravity acceleration magnitude.

53. **StandardDeviationBodyAccelerationJerkMagnitude** - The standard deviation of the body acceleration magnitude derived in time to obtain Jerk signals.

54. **StandardDeviationBodyAngularVelocityMagnitude** - The standard deviation of the angular velocity magnitude.

55. **StandardDeviationBodyAngularVelocityJerkMagnitude** - The standard deviation of the angular velocity magnitude derived in time to obtain Jerk signals.

56. **StandardDeviationFFTBodyAccelerationXAxis** - The standard deviation of the body acceleration on the X axis, with a Fast Fourier Transform (FFT) applied. 

57. **StandardDeviationFFTBodyAccelerationYAxis** - The standard deviation of the body acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.

58. **StandardDeviationFFTBodyAccelerationZAxis** - The standard deviation of the body acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.

59. **StandardDeviationFFTBodyAngularVelocityJerkXAxis** - The standard deviation of the body angular velocity on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied. 

60. **StandardDeviationFFTBodyAngularVelocityJerkYAxis** - The standard deviation of the body angular velocity on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

61. **StandardDeviationFFTBodyAngularVelocityJerkZAxis** - The standard deviation of the body angular velocity on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

62. **StandardDeviationFFTBodyAngularVelocityXAxis** - The standard deviation of the body angular velocity on the X axis, with a Fast Fourier Transform (FFT) applied. 

63. **StandardDeviationFFTBodyAngularVelocityYAxis** - The standard deviation of the body angular velocity on the Y axis, with a Fast Fourier Transform (FFT) applied.

64. **StandardDeviationFFTBodyAngularVelocityZAxis** - The standard deviation of the body angular velocity on the Z axis, with a Fast Fourier Transform (FFT) applied.

65. **StandardDeviationFFTBodyAccelerationMagnitude** - The standard deviation of the body acceleration magnitude, with a Fast Fourier Transform (FFT) applied.

66. **StandardDeviationFFTBodyAccelerationJerkMagnitude** - The standard deviation of the body acceleration magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

67. **StandardDeviationFFTBodyAngularVelocityMagnitude** - The standard deviation of the angular velocity magnitude, with a Fast Fourier Transform (FFT) applied.

68. **StandardDeviationFFTBodyAngularVelocityJerkMagnitude** - The standard deviation of the angular velocity magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
