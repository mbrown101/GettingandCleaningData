##  Code book for Getting and Cleaning Course Project

### Data:
The data for this project is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data can be accessed from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### Description of run_analysis.R 
Initial condition: all files from the data source zip file (noted above) are UNZIPPED in the R working directory

Tidy Dataset Output:

Col	Type	max	min	Column Title
1	text			activity
2	int			subject
3	float	0.30146102	0.221598244	TimeDomainBodyAccelerationMeanValueXaxis
4	float	-0.001308288	-0.040513953	TimeDomainBodyAccelerationMeanValueYaxis
5	float	-0.075378469	-0.1525139	TimeDomainBodyAccelerationMeanValueZaxis
6	float	0.626917071	-0.996068635	TimeDomainBodyAccelerationStandardDeviationXaxis
7	float	0.616937015	-0.990240947	TimeDomainBodyAccelerationStandardDeviationYaxis
8	float	0.609017879	-0.987658662	TimeDomainBodyAccelerationStandardDeviationZaxis
9	float	0.974508732	-0.680043155	TimeDomainGravityAccelerationMeanValueXaxis
10	float	0.956593814	-0.479894843	TimeDomainGravityAccelerationMeanValueYaxis
11	float	0.957873042	-0.49508872	TimeDomainGravityAccelerationMeanValueZaxis
12	float	-0.829554948	-0.996764227	TimeDomainGravityAccelerationStandardDeviationXaxis
13	float	-0.643578361	-0.994247649	TimeDomainGravityAccelerationStandardDeviationYaxis
14	float	-0.610161166	-0.99095725	TimeDomainGravityAccelerationStandardDeviationZaxis
15	float	0.130193044	0.042688099	TimeDomainBodyAccelerationJerkMeanValueXaxis
16	float	0.056818586	-0.038687211	TimeDomainBodyAccelerationJerkMeanValueYaxis
17	float	0.038053359	-0.067458392	TimeDomainBodyAccelerationJerkMeanValueZaxis
18	float	0.544273037	-0.994604542	TimeDomainBodyAccelerationJerkStandardDeviationXaxis
19	float	0.355306717	-0.989513566	TimeDomainBodyAccelerationJerkStandardDeviationYaxis
20	float	0.031015708	-0.993288313	TimeDomainBodyAccelerationJerkStandardDeviationZaxis
21	float	0.192704476	-0.205775427	TimeDomainBodyGyroMeanValueXaxis
22	float	0.027470756	-0.204205356	TimeDomainBodyGyroMeanValueYaxis
23	float	0.179102058	-0.072454603	TimeDomainBodyGyroMeanValueZaxis
24	float	0.267657219	-0.994276591	TimeDomainBodyGyroStandardDeviationXaxis
25	float	0.476518714	-0.994210472	TimeDomainBodyGyroStandardDeviationYaxis
26	float	0.564875818	-0.985538363	TimeDomainBodyGyroStandardDeviationZaxis
27	float	-0.022091627	-0.157212539	TimeDomainBodyGyroJerkMeanValueXaxis
28	float	-0.013202277	-0.076808992	TimeDomainBodyGyroJerkMeanValueYaxis
29	float	-0.006940664	-0.092499853	TimeDomainBodyGyroJerkMeanValueZaxis
30	float	0.17914865	-0.996542541	TimeDomainBodyGyroJerkStandardDeviationXaxis
31	float	0.295945926	-0.997081576	TimeDomainBodyGyroJerkStandardDeviationYaxis
32	float	0.193206499	-0.995380795	TimeDomainBodyGyroJerkStandardDeviationZaxis
33	float	0.644604325	-0.986493197	TimeDomainBodyAccelerationMagMeanValue
34	float	0.428405923	-0.986464543	TimeDomainBodyAccelerationMagStandardDeviation
35	float	0.644604325	-0.986493197	TimeDomainGravityAccelerationMagMeanValue
36	float	0.428405923	-0.986464543	TimeDomainGravityAccelerationMagStandardDeviation
37	float	0.434490401	-0.992814715	TimeDomainBodyAccelerationJerkMagMeanValue
38	float	0.450612066	-0.994646917	TimeDomainBodyAccelerationJerkMagStandardDeviation
39	float	0.418004609	-0.980740847	TimeDomainBodyGyroMagMeanValue
40	float	0.29997598	-0.981372676	TimeDomainBodyGyroMagStandardDeviation
41	float	0.087581662	-0.997322527	TimeDomainBodyGyroJerkMagMeanValue
42	float	0.250173204	-0.997666072	TimeDomainBodyGyroJerkMagStandardDeviation
43	float	0.537012022	-0.995249933	FrequencyDomainAccelerationMeanValueXaxis
44	float	0.524187687	-0.989034304	FrequencyDomainAccelerationMeanValueYaxis
45	float	0.280735952	-0.989473927	FrequencyDomainAccelerationMeanValueZaxis
46	float	0.658506543	-0.99660457	FrequencyDomainAccelerationStandardDeviationXaxis
47	float	0.560191344	-0.990680395	FrequencyDomainAccelerationStandardDeviationYaxis
48	float	0.687124164	-0.987224804	FrequencyDomainAccelerationStandardDeviationZaxis
49	float	0.159123629	-0.635913046	FrequencyDomainAccelerationMeanValueFrequencyXaxis
50	float	0.466528232	-0.379518455	FrequencyDomainAccelerationMeanValueFrequencyYaxis
51	float	0.402532553	-0.520114794	FrequencyDomainAccelerationMeanValueFrequencyZaxis
52	float	0.474317256	-0.994630797	FrequencyDomainAccelerationJerkMeanValueXaxis
53	float	0.276716853	-0.989398824	FrequencyDomainAccelerationJerkMeanValueYaxis
54	float	0.157775692	-0.992018448	FrequencyDomainAccelerationJerkMeanValueZaxis
55	float	0.476803887	-0.995073759	FrequencyDomainAccelerationJerkStandardDeviationXaxis
56	float	0.349771285	-0.990468083	FrequencyDomainAccelerationJerkStandardDeviationYaxis
57	float	-0.006236475	-0.99310776	FrequencyDomainAccelerationJerkStandardDeviationZaxis
58	float	0.331449281	-0.576044002	FrequencyDomainAccelerationJerkMeanValueFrequencyXaxis
59	float	0.195677336	-0.601971415	FrequencyDomainAccelerationJerkMeanValueFrequencyYaxis
60	float	0.230107946	-0.627555474	FrequencyDomainAccelerationJerkMeanValueFrequencyZaxis
61	float	0.474962448	-0.993122609	FrequencyDomainGyroMeanValueXaxis
62	float	0.32881701	-0.994025488	FrequencyDomainGyroMeanValueYaxis
63	float	0.49241438	-0.985957788	FrequencyDomainGyroMeanValueZaxis
64	float	0.196613287	-0.994652185	FrequencyDomainGyroStandardDeviationXaxis
65	float	0.646233637	-0.994353087	FrequencyDomainGyroStandardDeviationYaxis
66	float	0.522454216	-0.986725275	FrequencyDomainGyroStandardDeviationZaxis
67	float	0.249209412	-0.395770151	FrequencyDomainGyroMeanValueFrequencyXaxis
68	float	0.273141323	-0.666814815	FrequencyDomainGyroMeanValueFrequencyYaxis
69	float	0.377074097	-0.507490867	FrequencyDomainGyroMeanValueFrequencyZaxis
70	float	0.586637551	-0.986800645	FrequencyDomainAccelerationMagMeanValue
71	float	0.178684581	-0.987648484	FrequencyDomainAccelerationMagStandardDeviation
72	float	0.435846932	-0.31233803	FrequencyDomainAccelerationMagMeanValueFrequency
73	float	0.538404846	-0.993998276	FrequencyDomainBodyAccelerationJerkMagMeanValue
74	float	0.316346415	-0.994366668	FrequencyDomainBodyAccelerationJerkMagStandardDeviation
75	float	0.4880885	-0.125210389	FrequencyDomainBodyAccelerationJerkMagMeanValueFrequency
76	float	0.203979765	-0.986535242	FrequencyDomainBodyGyroMagMeanValue
77	float	0.236659662	-0.981468842	FrequencyDomainBodyGyroMagStandardDeviation
78	float	0.409521612	-0.456638671	FrequencyDomainBodyGyroMagMeanValueFrequency
79	float	0.146618569	-0.997617389	FrequencyDomainBodyGyroJerkMagMeanValue
80	float	0.287834616	-0.997585231	FrequencyDomainBodyGyroJerkMagStandardDeviation
81	float	0.42630168	-0.182923597	FrequencyDomainBodyGyroJerkMagMeanValueFrequency




Programatic Steps:

+ Merge each training and test data set into one data set
+ Extract  measurements on the mean and standard deviation for each measurement
+ Add descriptive activities to data set
+ Label data descriptively
+ Create second, independent tidy data set weith the average of each variable for each activity and each subject
