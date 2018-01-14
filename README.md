# CS171-Naive-Bayes-learning-and-testing

Task is to implement naïve Bayes learning and testing. Write two functions:  
  
  * function [ priorp , condp ] = learnnb (X,Y)  
  * function predY = prednb(X,priorp ,condp)  
  
X is a m-by-n matrix representing m examples, each with n features. 
For this assignment, you may assume that each feature is one of three values, 0, 1, or 2. Y is a m-by-1 vector. 
For this assignment, you may assume that there are only two classes: 0 and 1.  
  
The first function, learnnb estimates the parameters of a naïve Bayes model. In particular, it should return two things:  
  * priorp, a 1-by-2 vector of the prior probabilities of each class.
  * condp, a 3-by-2-by-n 3d array. The (i, j, k) element should be the estimate of Prob(xk = i | y = j)  
  
The second function, prednd should use these estimated parameters to return the predicted class for each of the rows of the input X.  
  
Supplied with the assignment are seven files:  
  * runq2.m, a function which runs the code and outputs the fraction correct  
  * loadspdata.m, a function which will load datasets in the particular format for this assignment  
  * toytrain.txt & toytest.txt, two files that encode the example problem from class (you can use to
check your calculations)  
  * trainspam.txt & testspam.txt, two files that encode a real spam-filtering test. There are 100
features, each corresponding to a word. The word list can be found in wordlst.txt and are the 100 most common words in the e-mails, after word endings have been removed. Each example is an e-mail to a linguistics e-mail list. Class 0 is non-spam. Class 1 is spam.
  
  This data was collected by Ion Androutsopoulos and kindly provided for researchers.  
 
  
