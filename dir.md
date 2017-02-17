codes
dataset
dir.md
papers

./codes:
accuracy_ratio_colon.R 		Use for plotting. R
desc.md						This description file.
excel_dicrete.py			Discretize for 3-states. Python
excel_file.py 				Select the attributed according to different FS methods. Python
mrmr_c_src 					Original mrmr code from its website. 	C
normallization.c 			Normallization. C
pc_selection.R 				Earlier PCA experiment in R.
pc_selection_iterations.R 	Earlier PCA experiment in R. Iterations.
plots_10f_colon.R 			Earlier PCA experiment, plot in R.
plots_10f_leukemia.R 		Earlier PCA experiment, plot in R.
plots_10fcv.R 				Earlier PCA experiment, plot in R.
plots_rvr.R 				Earlier PCA experiment, plot in R.
testread.c 					Reading raw dataset and format into csv.
transform.py 				Preparation for the input file for excel_file.py


./dataset:
PLS
QPFS
Relief
breast cancer
colon-cancer
colon.flda.csv
desc.md
leu.raw
leukemia_arff_files
leukemia_class_rear.csv
mrmr
pca_all.csv
plots

./dataset/PLS:
10-folds.kfml 				Knowledge flows, Weka.
10-folds.kfml.kf 			Knowledge flows, Weka.
colon_class_front.csv 		Colon dataset with class attribute at the front.1 and -1
datafiles 					Datafiles after applied PLS
leukemia_class_front.csv 	Leukemia dataset with class attribute at the front. 1 and -1
output_PLS.txt 				Some output from PLS

./dataset/PLS/datafiles:
leu_100_pls1.csv
leu_10_pls1.csv
leu_200_pls1.csv
leu_20_pls1.csv
leu_30_pls1.csv
leu_50_pls1.csv
leu_5_pls1.csv
pls1_100_colon.csv
pls1_10_colon.csv
pls1_200_colon.csv
pls1_20_colon.csv
pls1_30_colon.csv
pls1_50_colon.csv
pls1_5_colon.csv

./dataset/QPFS:
10-folds.kfml 				Knowledge flows, Weka.
10-folds.kfml.kf 			Knowledge flows, Weka.
QPFS_all.txt 				Some output results from QPFS
colon.out 					QPFS results for colon
colon_cf_tf.csv 			Colon dataset with class attribute at the front, true and false
datafiles_tf 				Datafiles after applied QPFS, true or false 
example.out 				An example for the QPFS output
excel_file.py 				Select the attributed according to different FS methods. Python
leu.out 					QPFS results for leukemia
leu_cf_tf.csv 				Leukemia dataset with class attribute at the front, true and false
selector.txt 				Attributes that need to be select from original dataset.
transform_qpfs.py 			Read from *.out to generate selector.txt.

./dataset/QPFS/datafiles_tf:
colon_QPFS_10.csv
colon_QPFS_100.csv
colon_QPFS_20.csv
colon_QPFS_200.csv
colon_QPFS_30.csv
colon_QPFS_5.csv
colon_QPFS_50.csv
leu_QPFS_10.csv
leu_QPFS_100.csv
leu_QPFS_20.csv
leu_QPFS_200.csv
leu_QPFS_30.csv
leu_QPFS_5.csv
leu_QPFS_50.csv

./dataset/Relief:
10folds 					results in txt
arffs 						ARFF DATA FILES
colon_class_rear.csv 		Colon dataset with class attribute at the end, true and false
leukemia_class_rear.csv 	Leukemia dataset with class attribute at the end, true and false
ratio.kfml 					Knowledge flows, Weka.
rawdata.kfml 				Knowledge flows, Weka.
svm_compare.kfml 			Knowledge flows, Weka.

./dataset/Relief/10folds:
colon_10.txt
colon_100.txt
colon_20.txt
colon_200.txt
colon_30.txt
colon_5.txt
colon_50.txt
colon_raw.txt
leu_10.txt
leu_100.txt
leu_20.txt
leu_200.txt
leu_30.txt
leu_5.txt
leu_50.txt
leu_raw.txt

./dataset/Relief/arffs:
colon_10.csv
colon_100.csv
colon_20.csv
colon_200.csv
colon_30.csv
colon_5.csv
colon_50.csv
leu_10.csv
leu_100.csv
leu_20.csv
leu_200.csv
leu_30.csv
leu_5.csv
leu_50.csv

./dataset/breast cancer:
breast-cancer-wisconsin.data
breast-cancer-wisconsin.names
unformatted-data.txt
wdbc.data
wdbc.names
wpbc.data
wpbc.names

./dataset/leukemia_arff_files:
pca_50.arff
pca_55.arff
pca_60.arff
pca_65.arff
pca_70.arff
pca_75.arff
pca_80.arff
pca_85.arff
pca_90.arff
pca_95.arff
pca_all.arff
raw.arff

./dataset/mrmr:
MaxRel_select_c.txt
MaxRel_select_l.txt
colon_cf_tf.csv
colon_class_front.csv
colon_s3.csv
colon_s3_tf.csv
datafiles
example.csv
example_trans.txt
excel_dicrete.py 			Discretize for 3-states. Python
excel_file.py 				Select the attributed according to different FS methods. Python
excel_file.pyc
leu_cf_tf.csv
leukemia_class_front.csv
leukemia_s3.csv
leukemia_s3_tf.csv
mRMR_algorithm_files
mRMR_select_c.txt
mRMR_select_l.txt
output.csv
select.txt
test_write.csv
tmp_output
transform.py 				Read to generate MaxRel_select_c.txt. MaxRel_select_l.txt.

./dataset/mrmr/datafiles:
MaxRel
MaxRel_tf
mRMR_MID
mRMR_MIQ

./dataset/mrmr/datafiles/MaxRel:
colon_con_max_10.csv
colon_con_max_100.csv
colon_con_max_20.csv
colon_con_max_200.csv
colon_con_max_30.csv
colon_con_max_5.csv
colon_con_max_50.csv
colon_dic_max_10.csv
colon_dic_max_100.csv
colon_dic_max_20.csv
colon_dic_max_200.csv
colon_dic_max_30.csv
colon_dic_max_5.csv
colon_dic_max_50.csv
leu_con_max_10.csv
leu_con_max_100.csv
leu_con_max_20.csv
leu_con_max_200.csv
leu_con_max_30.csv
leu_con_max_5.csv
leu_con_max_50.csv
leu_dic_max_10.csv
leu_dic_max_100.csv
leu_dic_max_20.csv
leu_dic_max_200.csv
leu_dic_max_30.csv
leu_dic_max_5.csv
leu_dic_max_50.csv

./dataset/mrmr/datafiles/MaxRel_tf:
colon_con_max_10.csv
colon_con_max_100.csv
colon_con_max_20.csv
colon_con_max_200.csv
colon_con_max_30.csv
colon_con_max_5.csv
colon_con_max_50.csv
leu_con_max_10.csv
leu_con_max_100.csv
leu_con_max_20.csv
leu_con_max_200.csv
leu_con_max_30.csv
leu_con_max_5.csv
leu_con_max_50.csv

./dataset/mrmr/datafiles/mRMR_MID:
colon_con_mrmr_10.csv
colon_con_mrmr_100.csv
colon_con_mrmr_20.csv
colon_con_mrmr_200.csv
colon_con_mrmr_30.csv
colon_con_mrmr_5.csv
colon_con_mrmr_50.csv
colon_dic_mrmr_10.csv
colon_dic_mrmr_100.csv
colon_dic_mrmr_20.csv
colon_dic_mrmr_200.csv
colon_dic_mrmr_30.csv
colon_dic_mrmr_5.csv
colon_dic_mrmr_50.csv
leu_con_mrmr_10.csv
leu_con_mrmr_100.csv
leu_con_mrmr_20.csv
leu_con_mrmr_200.csv
leu_con_mrmr_30.csv
leu_con_mrmr_5.csv
leu_con_mrmr_50.csv
leu_dic_mrmr_10.csv
leu_dic_mrmr_100.csv
leu_dic_mrmr_20.csv
leu_dic_mrmr_200.csv
leu_dic_mrmr_30.csv
leu_dic_mrmr_5.csv
leu_dic_mrmr_50.csv

./dataset/mrmr/datafiles/mRMR_MIQ:
colon_c_Q_10.csv
colon_c_Q_100.csv
colon_c_Q_20.csv
colon_c_Q_200.csv
colon_c_Q_30.csv
colon_c_Q_5.csv
colon_c_Q_50.csv
colon_d_Q_10.csv
colon_d_Q_100.csv
colon_d_Q_20.csv
colon_d_Q_200.csv
colon_d_Q_30.csv
colon_d_Q_5.csv
colon_d_Q_50.csv
leu_c_Q_10.csv
leu_c_Q_100.csv
leu_c_Q_20.csv
leu_c_Q_200.csv
leu_c_Q_30.csv
leu_c_Q_5.csv
leu_c_Q_50.csv
leu_d_Q_10.csv
leu_d_Q_100.csv
leu_d_Q_20.csv
leu_d_Q_200.csv
leu_d_Q_30.csv
leu_d_Q_5.csv
leu_d_Q_50.csv

./dataset/mrmr/mRMR_algorithm_files:
colon_con_MIQ10.txt
colon_con_MIQ100.txt
colon_con_MIQ20.txt
colon_con_MIQ200.txt
colon_con_MIQ30.txt
colon_con_MIQ5.txt
colon_con_MIQ50.txt
colon_continuous10.txt
colon_continuous100.txt
colon_continuous20.txt
colon_continuous200.txt
colon_continuous30.txt
colon_continuous5.txt
colon_continuous50.txt
colon_dic_10.txt
colon_dic_100.txt
colon_dic_20.txt
colon_dic_200.txt
colon_dic_30.txt
colon_dic_5.txt
colon_dic_50.txt
colon_dic_MIQ10.txt
colon_dic_MIQ100.txt
colon_dic_MIQ20.txt
colon_dic_MIQ200.txt
colon_dic_MIQ30.txt
colon_dic_MIQ5.txt
colon_dic_MIQ50.txt
leu_con_MIQ10.txt
leu_con_MIQ100.txt
leu_con_MIQ20.txt
leu_con_MIQ200.txt
leu_con_MIQ30.txt
leu_con_MIQ5.txt
leu_con_MIQ50.txt
leu_dic_10.txt
leu_dic_100.txt
leu_dic_20.txt
leu_dic_200.txt
leu_dic_30.txt
leu_dic_5.txt
leu_dic_50.txt
leu_dic_MIQ10.txt
leu_dic_MIQ100.txt
leu_dic_MIQ20.txt
leu_dic_MIQ200.txt
leu_dic_MIQ30.txt
leu_dic_MIQ5.txt
leu_dic_MIQ50.txt
leukemia_mrmr_continuours10.txt
leukemia_mrmr_continuours100.txt
leukemia_mrmr_continuours20.txt
leukemia_mrmr_continuours200.txt
leukemia_mrmr_continuours30.txt
leukemia_mrmr_continuours5.txt
leukemia_mrmr_continuours50.txt

./dataset/mrmr/tmp_output:
MIQ_mRMR_select_c.txt
MIQ_mRMR_select_l.txt
MaxRel_select.txt
MaxRel_select_c.txt
MaxRel_select_l.txt
mRMR_select.txt
mRMR_select_c.txt
mRMR_select_l.txt

./dataset/plots:
colon_10f_accuracy.png
plot_10f_leukemia.png
r64_colon.png
r73_colon.png
r82_colon.png
r91_colon.png

./papers:
00946204.pdf
01058079.pdf
04350734.pdf
06531614.pdf
06701361.pdf
1-s2.0-S0925231214006067-main.pdf
1-s2.0-S0952197614000621-main.pdf
1471-2105-13-270 copy.pdf
2004_JBCB_feasel-04-06-15.pdf
2005_TPAMI_FeaSel.pdf
2007_-_K_R_Robbins_-_Theantcolonyalgorithmforfeatureselectioninhighdime[retrieved-2016-07-03].pdf
39688.pdf
A Review of Feature Selection and Feature Extraction Methods Applied on Microarray Data.pdf
An Improvement on PCA Algorithm for Face Recognition.pdf
Ant-Colony-Optimization-for-Feature-Subset-Selection.pdf
BIBM07_mRMR_071103_handout.pdf
BIC6119.docx
Improved Neural Network Performance Using Principal Component Analysis on Matlab .pdf
Improved gene prediction by principal component analysis based autoregressive Yule–Walker method.pdf
Improved principal component analysis for anomaly detection- Application to an emergency department.pdf
Improvement on PCA and 2DPCA Algorithms for Face Recognition.pdf
Improving support vector machine classifiers by modifying kernel functions.pdf
Modified Principal Component Analysis (MPCA) for Feature Selection of Hyperspectral Imagery.pdf
New Adaptive Kernel Principal Component Analysis for Nonlinear Dynamic Process Monitoring.pdf
Recognizing faces with PCA and ICA.pdf
Supervised Sparse and Functional Principal Component Analysis.pdf
Suppl2_Ringner2008.pdf
art%3A10.1186%2F1471-2105-11-567.pdf
chp%3A10.1007%2F978-3-540-85567-5_49.pdf
chp%3A10.1007%2F978-3-642-10684-2_27.pdf
improvment in PCA.doc
intro_principal_components.pdf
paper PCA modfied.pdf
