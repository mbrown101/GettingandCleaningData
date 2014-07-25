##  Code book for Getting and Cleaning Course Project

### Data:
The data for this project is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data can be accessed from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### Description of run_analysis.R 
Initial condition: all files from the data source zip file (noted above) are UNZIPPED in the R working directory

Tidy Dataset Output:

Column	Column Title	Type	max	min
1	activity	text		
2	subject	int		
3	TimeDomainBodyAccelerationMeanValueXaxis	float	0.30146102	0.221598244
4	TimeDomainBodyAccelerationMeanValueYaxis	float	-0.001308288	-0.040513953
5	TimeDomainBodyAccelerationMeanValueZaxis	float	-0.075378469	-0.1525139
6	TimeDomainBodyAccelerationStandardDeviationXaxis	float	0.626917071	-0.996068635
7	TimeDomainBodyAccelerationStandardDeviationYaxis	float	0.616937015	-0.990240947
8	TimeDomainBodyAccelerationStandardDeviationZaxis	float	0.609017879	-0.987658662
9	TimeDomainGravityAccelerationMeanValueXaxis	float	0.974508732	-0.680043155
10	TimeDomainGravityAccelerationMeanValueYaxis	float	0.956593814	-0.479894843
11	TimeDomainGravityAccelerationMeanValueZaxis	float	0.957873042	-0.49508872
12	TimeDomainGravityAccelerationStandardDeviationXaxis	float	-0.829554948	-0.996764227
13	TimeDomainGravityAccelerationStandardDeviationYaxis	float	-0.643578361	-0.994247649
14	TimeDomainGravityAccelerationStandardDeviationZaxis	float	-0.610161166	-0.99095725
15	TimeDomainBodyAccelerationJerkMeanValueXaxis	float	0.130193044	0.042688099
16	TimeDomainBodyAccelerationJerkMeanValueYaxis	float	0.056818586	-0.038687211
17	TimeDomainBodyAccelerationJerkMeanValueZaxis	float	0.038053359	-0.067458392
18	TimeDomainBodyAccelerationJerkStandardDeviationXaxis	float	0.544273037	-0.994604542
19	TimeDomainBodyAccelerationJerkStandardDeviationYaxis	float	0.355306717	-0.989513566
20	TimeDomainBodyAccelerationJerkStandardDeviationZaxis	float	0.031015708	-0.993288313
21	TimeDomainBodyGyroMeanValueXaxis	float	0.192704476	-0.205775427
22	TimeDomainBodyGyroMeanValueYaxis	float	0.027470756	-0.204205356
23	TimeDomainBodyGyroMeanValueZaxis	float	0.179102058	-0.072454603
24	TimeDomainBodyGyroStandardDeviationXaxis	float	0.267657219	-0.994276591
25	TimeDomainBodyGyroStandardDeviationYaxis	float	0.476518714	-0.994210472
26	TimeDomainBodyGyroStandardDeviationZaxis	float	0.564875818	-0.985538363
27	TimeDomainBodyGyroJerkMeanValueXaxis	float	-0.022091627	-0.157212539
28	TimeDomainBodyGyroJerkMeanValueYaxis	float	-0.013202277	-0.076808992
29	TimeDomainBodyGyroJerkMeanValueZaxis	float	-0.006940664	-0.092499853
30	TimeDomainBodyGyroJerkStandardDeviationXaxis	float	0.17914865	-0.996542541
31	TimeDomainBodyGyroJerkStandardDeviationYaxis	float	0.295945926	-0.997081576
32	TimeDomainBodyGyroJerkStandardDeviationZaxis	float	0.193206499	-0.995380795
33	TimeDomainBodyAccelerationMagMeanValue	float	0.644604325	-0.986493197
34	TimeDomainBodyAccelerationMagStandardDeviation	float	0.428405923	-0.986464543
35	TimeDomainGravityAccelerationMagMeanValue	float	0.644604325	-0.986493197
36	TimeDomainGravityAccelerationMagStandardDeviation	float	0.428405923	-0.986464543
37	TimeDomainBodyAccelerationJerkMagMeanValue	float	0.434490401	-0.992814715
38	TimeDomainBodyAccelerationJerkMagStandardDeviation	float	0.450612066	-0.994646917
39	TimeDomainBodyGyroMagMeanValue	float	0.418004609	-0.980740847
40	TimeDomainBodyGyroMagStandardDeviation	float	0.29997598	-0.981372676
41	TimeDomainBodyGyroJerkMagMeanValue	float	0.087581662	-0.997322527
42	TimeDomainBodyGyroJerkMagStandardDeviation	float	0.250173204	-0.997666072
43	FrequencyDomainAccelerationMeanValueXaxis	float	0.537012022	-0.995249933
44	FrequencyDomainAccelerationMeanValueYaxis	float	0.524187687	-0.989034304
45	FrequencyDomainAccelerationMeanValueZaxis	float	0.280735952	-0.989473927
46	FrequencyDomainAccelerationStandardDeviationXaxis	float	0.658506543	-0.99660457
47	FrequencyDomainAccelerationStandardDeviationYaxis	float	0.560191344	-0.990680395
48	FrequencyDomainAccelerationStandardDeviationZaxis	float	0.687124164	-0.987224804
49	FrequencyDomainAccelerationMeanValueFrequencyXaxis	float	0.159123629	-0.635913046
50	FrequencyDomainAccelerationMeanValueFrequencyYaxis	float	0.466528232	-0.379518455
51	FrequencyDomainAccelerationMeanValueFrequencyZaxis	float	0.402532553	-0.520114794
52	FrequencyDomainAccelerationJerkMeanValueXaxis	float	0.474317256	-0.994630797
53	FrequencyDomainAccelerationJerkMeanValueYaxis	float	0.276716853	-0.989398824
54	FrequencyDomainAccelerationJerkMeanValueZaxis	float	0.157775692	-0.992018448
55	FrequencyDomainAccelerationJerkStandardDeviationXaxis	float	0.476803887	-0.995073759
56	FrequencyDomainAccelerationJerkStandardDeviationYaxis	float	0.349771285	-0.990468083
57	FrequencyDomainAccelerationJerkStandardDeviationZaxis	float	-0.006236475	-0.99310776
58	FrequencyDomainAccelerationJerkMeanValueFrequencyXaxis	float	0.331449281	-0.576044002
59	FrequencyDomainAccelerationJerkMeanValueFrequencyYaxis	float	0.195677336	-0.601971415
60	FrequencyDomainAccelerationJerkMeanValueFrequencyZaxis	float	0.230107946	-0.627555474
61	FrequencyDomainGyroMeanValueXaxis	float	0.474962448	-0.993122609
62	FrequencyDomainGyroMeanValueYaxis	float	0.32881701	-0.994025488
63	FrequencyDomainGyroMeanValueZaxis	float	0.49241438	-0.985957788
64	FrequencyDomainGyroStandardDeviationXaxis	float	0.196613287	-0.994652185
65	FrequencyDomainGyroStandardDeviationYaxis	float	0.646233637	-0.994353087
66	FrequencyDomainGyroStandardDeviationZaxis	float	0.522454216	-0.986725275
67	FrequencyDomainGyroMeanValueFrequencyXaxis	float	0.249209412	-0.395770151
68	FrequencyDomainGyroMeanValueFrequencyYaxis	float	0.273141323	-0.666814815
69	FrequencyDomainGyroMeanValueFrequencyZaxis	float	0.377074097	-0.507490867
70	FrequencyDomainAccelerationMagMeanValue	float	0.586637551	-0.986800645
71	FrequencyDomainAccelerationMagStandardDeviation	float	0.178684581	-0.987648484
72	FrequencyDomainAccelerationMagMeanValueFrequency	float	0.435846932	-0.31233803
73	FrequencyDomainBodyAccelerationJerkMagMeanValue	float	0.538404846	-0.993998276
74	FrequencyDomainBodyAccelerationJerkMagStandardDeviation	float	0.316346415	-0.994366668
75	FrequencyDomainBodyAccelerationJerkMagMeanValueFrequency	float	0.4880885	-0.125210389
76	FrequencyDomainBodyGyroMagMeanValue	float	0.203979765	-0.986535242
77	FrequencyDomainBodyGyroMagStandardDeviation	float	0.236659662	-0.981468842
78	FrequencyDomainBodyGyroMagMeanValueFrequency	float	0.409521612	-0.456638671
79	FrequencyDomainBodyGyroJerkMagMeanValue	float	0.146618569	-0.997617389
80	FrequencyDomainBodyGyroJerkMagStandardDeviation	float	0.287834616	-0.997585231
81	FrequencyDomainBodyGyroJerkMagMeanValueFrequency	float	0.42630168	-0.182923597





Programatic Steps:

+ Merge each training and test data set into one data set
+ Extract  measurements on the mean and standard deviation for each measurement
+ Add descriptive activities to data set
+ Label data descriptively
+ Create second, independent tidy data set weith the average of each variable for each activity and each subject
