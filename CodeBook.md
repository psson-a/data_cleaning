# Codebook for "UCI HAR data tidy.txt"

## ID Variables

1.	**subject**:

 ID code of subject performing measured activity, ranged from 1 to 30

2.	**activity**:

Activity performed during measurement, one of "walking", "walking_upstairs", "walking downstairs", "sitting", "standing" and "laying". Based on manual labeling of video recordings of the experiments.

## Measured variables

The original data was captured by the subject wearing a Samsung Galaxy S II - smartphone while performing various assigned activities. Linear acceleration (accelerometer) and angular velocity (gyroscope) were captured in the X, Y and Z axises/planes. The raw data for the script producing the current datafile has been preprocessed by various means (described in the README.txt file in the "UCI HAR DATASET" folder) to yield summary variables of the time-domain measurements and also Fourier-transformed to yield summary frequency-domain variables. The script further processes the data by selecting only the mean and standard deviation-variables for each measurement variable and then taking the mean over time for each subject-activity combination, yielding an average value per subject per activity for each measured variable. The unit of measurement for the variables is not known.

3.	**body_acceleration_x-axis-mean()**:

Mean of body acceleration measured on x-axis

4.	**body_acceleration_y-axis-mean()**:

Mean of body acceleration measured on y-axis

5.	**body_acceleration_z-axis-mean()**:

Mean of body acceleration measured on z-axis

6.	**body_acceleration_x-axis-std()**:

Standard deviation of body acceleration measured on x-axis

7.	**body_acceleration_y-axis-std()**:

Standard deviation of body acceleration measured on y-axis

8.	**body_acceleration_z-axis-std()**:

Standard deviation of body acceleration measured on z-axis

9.	**gravity_acceleration_x-axis-mean()**:

Mean of gravity acceleration measured on x-axis

10.	**gravity_acceleration_y-axis-mean()**:

Mean of gravity acceleration measured on y-axis

11.	**gravity_acceleration_z-axis-mean()**:

Mean of gravity acceleration measured on z-axis

12.	**gravity_acceleration_x-axis-std()**:

Standard deviation of gravity acceleration measured on x-axis

13.	**gravity_acceleration_y-axis-std()**:

Standard deviation of gravity acceleration measured on y-axis

14.	**gravity_acceleration_z-axis-std()**:

Standard deviation of gravity acceleration measured on z-axis

15.	**body_acceleration_jerk_x-axis-mean()**:

Mean of jerk-signal (derived by time) for body acceleration measured on x-axis

16.	**body_acceleration_jerk_y-axis-mean()**:

Mean of jerk-signal (derived by time) for body acceleration measured on y-axis

17.	**body_acceleration_jerk_z-axis-mean()**:

Mean of jerk-signal (derived by time) for body acceleration measured on z-axis

18.	**body_acceleration_jerk_x-axis-std()**:

Standard deviation of jerk-signal (derived by time) for body acceleration measured on x-axis

19.	**body_acceleration_jerk_y-axis-std()**:

Standard deviationMean of jerk-signal (derived by time) for body acceleration measured on y-axis

20.	**body_acceleration_jerk_z-axis-std()**:

Standard deviation of jerk-signal (derived by time) for body acceleration measured on z-axis

21.	**body_gyroscope_x-axis-mean()**:

Mean of body gyroscope signal measured on x-axis

22.	**body_gyroscope_y-axis-mean()**:

Mean of body gyroscope signal measured on y-axis

23.	**body_gyroscope_z-axis-mean()**:

Mean of body gyroscope signal measured on z-axis

24.	**body_gyroscope_x-axis-std()**:

Standard deviation of body gyroscope signal measured on x-axis

25.	**body_gyroscope_y-axis-std()**:

Standard deviation of body gyroscope signal measured on y-axis

26.	**body_gyroscope_z-axis-std()**:

Standard deviation of body gyroscope signal measured on z-axis

27.	**body_gyroscope_jerk_x-axis-mean()**:

Mean of jerk-signal (derived by time) for body gyroscope signal measured on x-axis

28.	**body_gyroscope_jerk_y-axis-mean()**:

Mean of jerk-signal (derived by time) for body gyroscope signal measured on y-axis

29.	**body_gyroscope_jerk_z-axis-mean()**:

Mean of jerk-signal (derived by time) for body gyroscope signal measured on z-axis

30.	**body_gyroscope_jerk_x-axis-std()**:

Standard deviation of jerk-signal (derived by time) for body gyroscope signal measured on x-axis

31.	**body_gyroscope_jerk_y-axis-std()**:

Standard deviation of jerk-signal (derived by time) for body gyroscope signal measured on y-axis

32.	**body_gyroscope_jerk_z-axis-std()**:

Standard deviation of jerk-signal (derived by time) for body gyroscope signal measured on z-axis

33.	**body_acceleration_magnitude-mean()**:

Mean of magnitude of body acceleration

34.	**body_acceleration_magnitude-std()**:

Standard deviation of magnitude of body acceleration

35.	**gravity_acceleration_magnitude-mean()**:

Mean of magnitude of gravity acceleration

36.	**gravity_acceleration_magnitude-std()**:

Standard deviation of magnitude of gravity acceleration

37.	**body_acceleration_jerk_magnitude-mean()**:

Mean of magnitude of jerk signal (derived by time) for body acceleration

38.	**body_acceleration_jerk_magnitude-std()**:

Standard deviation of magnitude of jerk signal (derived by time) for body acceleration

39.	**body_gyroscope_magnitude-mean()**:

Mean of magnitude for body gyroscope signal

40.	**body_gyroscope_magnitude-std()**:

Standard deviation of magnitude of for body gyroscope signal

41.	**body_gyroscope_jerk_magnitude-mean()**:

Mean of magnitude of jerk signal (derived by time) for body gyroscope signal

42.	**body_gyroscope_jerk_magnitude-std()**:

Standard deviation of magnitude of jerk signal (derived by time) for body gyroscope signal

43.	**frequency_domain_body_acceleration_x-axis-mean()**:

Fourier-transformed mean of body acceleration measured on x-axis

44.	**frequency_domain_body_acceleration_y-axis-mean()**:

Fourier-transformed mean of body acceleration measured on y-axis

45.	**frequency_domain_body_acceleration_z-axis-mean()**:

Fourier-transformed mean of body acceleration measured on z-axis

46.	**frequency_domain_body_acceleration_x-axis-std()**:

Fourier-transformed standard deviation of body acceleration measured on x-axis

47.	**frequency_domain_body_acceleration_y-axis-std()**:

Fourier-transformed standard deviation of body acceleration measured on y-axis

48.	**frequency_domain_body_acceleration_z-axis-std()**:

Fourier-transformed standard deviation of body acceleration measured on z-axis

49.	**frequency_domain_body_acceleration_jerk_x-axis-mean()**:

Fourier-transformed mean of jerk-signal (derived by time) for body acceleration measured on x-axis

50.	**frequency_domain_body_acceleration_jerk_y-axis-mean()**:

Fourier-transformed mean of jerk-signal (derived by time) for body acceleration measured on y-axis

51.	**frequency_domain_body_acceleration_jerk_z-axis-mean()**:

Fourier-transformed mean of jerk-signal (derived by time) for body acceleration measured on z-axis

52.	**frequency_domain_body_acceleration_jerk_x-axis-std()**:

Fourier-transformed standard deviation of jerk-signal (derived by time) for body acceleration measured on x-axis

53.	**frequency_domain_body_acceleration_jerk_y-axis-std()**:

Fourier-transformed standard deviation of jerk-signal (derived by time) for body acceleration measured on y-axis

54.	**frequency_domain_body_acceleration_jerk_z-axis-std()**:

Fourier-transformed standard deviation of jerk-signal (derived by time) for body acceleration measured on z-axis

55.	**frequency_domain_body_gyroscope_x-axis-mean()**:

Fourier-transformed mean of body gyroscope signal measured on x-axis

56.	**frequency_domain_body_gyroscope_y-axis-mean()**:

Fourier-transformed mean of body gyroscope signal measured on y-axis

57.	**frequency_domain_body_gyroscope_z-axis-mean()**:

Fourier-transformed mean of body gyroscope signal measured on z-axis

58.	**frequency_domain_body_gyroscope_x-axis-std()**:

Fourier-transformed standard deviation of body gyroscope signal measured on x-axis

59.	**frequency_domain_body_gyroscope_y-axis-std()**:

Fourier-transformed standard deviation of body gyroscope signal measured on y-axis

60.	**frequency_domain_body_gyroscope_z-axis-std()**:

Fourier-transformed standard deviation of body gyroscope signal measured on z-axis

61.	**frequency_domain_body_acceleration_magnitude-mean()**:

Fourier-transformed mean of magnitude of body acceleration

62.	**frequency_domain_body_acceleration_magnitude-std()**:

Fourier-transformed standard deviation of magnitude of body acceleration

63.	**frequency_domain_body_acceleration_jerk_magnitude-mean()**:

Fourier-transformed mean of magnitude of jerk signal (derived by time) for body acceleration

64.	**frequency_domain_body_acceleration_jerk_magnitude-std()**:

Fourier-transformed standard deviation of magnitude of jerk signal (derived by time) for body acceleration

65.	**frequency_domain_body_gyroscope_magnitude-mean()**:

Fourier-transformed mean of magnitude of body gyroscope signal

66.	**frequency_domain_body_gyroscope_magnitude-std()**:

Fourier-transformed standard deviation of magnitude of body gyroscope signal

67.	**frequency_domain_body_gyroscope_jerk_magnitude-mean()**:

Fourier-transformed mean of magnitude of jerk signal (derived by time) for body gyroscope signal

68.	**frequency_domain_body_gyroscope_jerk_magnitude-std()**:

Fourier-transformed standard deviation of magnitude of jerk signal (derived by time) for body gyroscope signal
