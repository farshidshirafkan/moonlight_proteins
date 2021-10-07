# moonlight_proteins
mpCool is a set of machine learning tool to detect moonlighting proteins by using various of feature vectors. It is also containing a tool for protein outlier’s finder and protein outlier’s removal. 

How to Use

CrossValidation:
This file train some machine learning model ('NB', 'KNN', 'SVM', 'MLP', 'DT', 'RF', 'ADA', 'LR') with various extracted features from moonlighting and non-moonlighting proteins.
First save all the files you want in the data/csv folder in the current folder. Each file is an csv file format contains extracted features for all of protein (moonlight and non-MP). Each row in the files represent a protein and each column represent a feature. First and last column indicate protein id and label class respectively. 
Finally to run, it is enough to call the DoClassifyAllFeature function after creating an object of Moonlihg_Classifier class. In the following example is showing:
object = Moonlihght_Classifier_CV()
lstX, lsty = object.DoFiletoDF()
object.final(lstX, lsty)

TrainTestSplit:
obj = TrainTestSplitClass()   
X, y = obj.DoFiletoDF()
obj.TCH(X, y)

RemoveOutliers:
To find and remove outlier and re run 10 fold cross validation use this file. The all pre configuration you need is to set the feature vector xlsx files path. Similar to other method the result will be saved in the result directory. 

OutlierFinders:
By using this file you could find outliers proteins a cross all machine learning model and feature vectors.
In this file two function are there:
FindCOP function find outliers just by Knn, Svm model with SAAC feature vector and Nb model with QSorder feature vector. Before calling this function be sure that SAAC.csv, QSrder.csv are saved in 
FindAllCOP  function  find outliers among all model and all provided features in the COPData folder.

