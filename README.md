# moonlight_proteins
detect moonlighting proteins by using various of feature vectors. 

How to Use

CrossValidation:
This file train some machine learning model ('NB', 'KNN', 'SVM', 'MLP', 'DT', 'RF', 'ADA', 'LR') with various extracted features from moonlighting and non-moonlighting proteins.
First save the file you want in the data folder. Each file is an csv file format contains extracted features for all of protein (moonlight and non-MP). Each row in the files represent a protein and each column represent a feature. First and last column indicate protein id and label class respectively. 

In the following example is showing:
CrossValidation:
obj = Moonlihght_CV()
X, y = obj.FiletoDF('D:/GitHub-IBB/DATA/QSorder.csv')
k = 10
result = obj.main(X, y, k)
result

TrainTestSplit:
obj = TrainTestSplitClass()   
X, y = obj.DoFiletoDF('D:/GitHub-IBB/DATA/QSorder.csv')
result = obj.Main(X, y)
result

HyperTuneParameters:
obj = TuneClass()      
df = obj.Main('D:/GitHub-IBB/DATA/IF.csv')
df

