%main

%delete previous data
clear;clc;close all;

%total population density (CHANGE)
n = 10000;

%mean and standard deviation for character creation (CHANGE)
mu = 0;
sigma = 1;

%assign physical characteristic traits
[charM,charF] = charCreate(n,mu,sigma);

% choose random males and females (CHANGE)
numRandM = 0.1*n; %number of random males (10% of population)
numRandF = 0.1*n; %number of random females (10% of population
[randM,randF] = randPeo(charM,charF,numRandM,numRandF);

%perceived weight limits for males (a,b); a<b (CHANGE)
aM = -1;
bM = 1;

%perceived weight limits for females (a,b); a<b (CHANGE)
aF = -1;
bF = 1;

%calculate objective perception values of random males and females
[objValM,objValF,percValM,percValF] = percEq(randM,randF,aM,bM,aF,bF);

%map attractiveness values to 1-5 scale
objValM = interp1([min(objValM),max(objValM)],[1,5],objValM);
objValF = interp1([min(objValF),max(objValF)],[1,5],objValF);
percValM = interp1([min(percValM),max(percValM)],[1,5],percValM);
percValF = interp1([min(percValF),max(percValF)],[1,5],percValF);

%graph attractiveness values
gAttract(objValM,objValF,percValM,percValF)