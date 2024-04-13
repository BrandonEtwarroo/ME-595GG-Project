%main

%delete previous data
clear;clc;close all;

%total population density
n = 100;

%assign physical characteristic parameters
[charM,charF] = charCreate(n);

% choose random males and females
numRandM = 10; %number of random males
numRandF = 10; %number of random females
[randM,randF] = randPeo(charM,charF,numRandM,numRandF);

%calculate objective values of random males and females
[objValM,objValF,percValM,percValF] = percEq(randM,randF);

%plot values
rating = linspace(1,5); %rating scale

%objective values (male)
pdM = fitdist(objValM','normal'); %probability distribution object (normal)
pdfM = pdf(pdM,rating); %probability density function object (normal), rating from 1-5
figure(1)
plot(rating,pdfM);
hold on

%perceived values (f->m)
pdM2 = fitdist(percValM','weibull') %probability distribution object (normal)
pdfM2 = pdf(pdM2,rating); %probability density function object (normal), rating from 1-5
plot(rating,pdfM2);

% %objective values (female)
% pdF = fitdist(objValF','normal'); %probability distribution object (normal)
% pdfF = pdf(pdF,rating); %probability density function object (normal), rating from 1-5
% figure(2)
% plot(rating,pdfF);
% hold on
% 
% %perceived values (m->f)
% pdF2 = fitdist(percValF','normal'); %probability distribution object (normal)
% pdfF2 = pdf(pdF2,rating); %probability density function object (normal), rating from 1-5
% plot(rating,pdfF2);