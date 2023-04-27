# Parkinsons Detection
Comparative Analysis of CNNs and ViTs for Parkinson's Detection from Audio Spectrograms

In this project we will try to build a model to detect Parkinson's Disease from Patient Audio Signals converted into Spectrograms. 

Since the audio patient audio data available is limited, we begin by sampling the audio into small audio files of 10 second each, that leaves us with around 700 Positive and Negative audio samples. The sampled audio signals are then converted into Frequency Transforms using the two matlab files given as Wavelet.m and Cross_Wavelet.m that convert the sampled audio into Wavelet Transforms and Cross Wavelet Transform that store the frequency spectrum information of the Audio Signals which is very useful in detecting Parkinson's disease. 

The Wavelet and Cross Wavelet Transforms obtained can now be used to train a CNN or a ViT to perform the task of Parkinson's Detection using Supervised Learning. However training the entire CNN or ViT on a limited dataset would not generalise well givem the enormous number of learnable features present in these models.

Hence a Transfer Learning Approach would be more suitable to work with in this case. Going ahead we will use differnt available Pre-Trained CNNs and ViTs to perform the feature extraction from the obtained Wavelet and Cross Wavelet Transforms. The extracted features corresponding to the different transforms can then be used to train a Linear or a Non-Linear Classifier to build the complete model. We will be usign classifiers like Logistic Regression, SVM, KNN, MLP and Random Forests to perform classification of Positive and Negative Samples. Subsequently the differnt methodolgies adapted can be compared and their relative performance can be evaluated using different metrics like Accuracy, Precision, F1 Score, ROC, AUC... 

# Parkinsons Detection using CNNs

# Parkinsons Detection using ViTs

