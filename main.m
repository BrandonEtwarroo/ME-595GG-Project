%main

%delete previous data
clear;clc;close all;

%population density
n = 100;

%assign physical characteristic parameters
character = charCreate(n);

% %apply preference equation to each agent
% precNum = precEq(person,n);
% 
% %using the interp1 to map the perceived attractiveness values to 1-10
% %might be able to put this block of code in the precNum function
% origVal = [min(precNum),max(precNum)];
% newVal = [1,10];
% vq1 = round(interp1(origVal,newVal,precNum))'; %rounded values for discrete numbers
% 
% %data
% mData = mean(vq1); %mean of the data
% sDev = std (vq1); %standard deviation of the data (is this supposed to be noise?)
% 
% %graph the values
% histfit(vq1) %makes a histogram and applies a density function to itplot(X,Y);