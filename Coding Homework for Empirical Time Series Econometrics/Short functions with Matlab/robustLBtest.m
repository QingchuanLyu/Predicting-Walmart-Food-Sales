function [chistat, pvalue]=robustLBtest(X, L)
R=ones(1,L);
coef=polyfit(X,y, 1); %derive estimated coefficients in a linear model
estcov=hac(X,y); %get estimated variance-covariance matrix
n=size(X,1); %get the number of total time periods
chistat=((R*coef).')*inv(R*(estcov/n)*(R.'))*(R*coef); %compute W^2, namely chi2 statistic. 
pvalue=1-chi2cdf(chistat, L); %compuation of p-value is the same as my answer to (a)

