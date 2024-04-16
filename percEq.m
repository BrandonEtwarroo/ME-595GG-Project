function [objValM,objValF,percValM,percValF] = percEq(randM,randF,aM,bM,aF,bF)
%percEq - calculates the objective and perceived values of attractiveness
%   objValM - the objective measure of attractiveness for males (avg of parts)
%   objValM - the objective measure of attractiveness for females (avg of parts)
%   percValM - the perceived value of attractiveness for males f->m
%   (weibull)
%   percValF - the perceived value of attractiveness for females m->f
%   (normal)

%random number generator
rng('default')

%objective measure of attractiveness
%assumed to be an average of all the applicable traits for both men and women
%applicable traits include: age,height,bmi

%objective value for males
objValM = [];
for c1 = 1:length(randM.num)
    objValM = [objValM,mean([randM.age(c1),randM.height(c1),randM.bmi(c1)])];
end

%objective value for females
objValF = [];
for c2 = 1:length(randF.num)
    objValF = [objValF,mean([randF.age(c2),randF.height(c2),randF.bmi(c2)])];
end


%perceived measure of attractiveness (THE ISSUE IS PROBABLY HERE)
%FOR F->M: to simulate personal preferences, weights will be randomly assigned
%between [-1,1], where the sum of the weights equals 0; all females will
%share the same preference

%FOR M->F: to simulate personal preferences, weights will be randomly
%assigned between [-1,1] where the sum of the weights equals the average of
%the weights; all males share the same preference

%perceived value for males

%random weights
wM = [10 10 10];
while sum(wM)~=0
    wM(1) = round(aM+(bM-(aM)).*rand(),1);
    wM(2) = round(aM+(bM-(aM)).*rand(),1);
    wM(3) = round(aM+(bM-(aM)).*rand(),1);
    sum(wM);
end

percValM = [];
for c3 = 1:length(randM.num)
    percValM = [percValM,abs(wM(1)*randM.age(c3)+wM(2)*randM.height(c3)+wM(3)*randM.bmi(c3))];
end

%perceived value for females

%random weights
wF = [10 10 10];
while sum(wF)~=3
    wF(1) = round(aF+(bF-(aF)).*rand(),1);
    wF(2) = round(aF+(bF-(aF)).*rand(),1);
    wF(3) = round(aF+(bF-(aF)).*rand(),1);
    sum(wF);
end

percValF = [];
for c4 = 1:length(randF.num)
    percValF = [percValF,abs(wF(1)*randF.age(c4)+wF(2)*randF.height(c4)+wF(3)*randF.bmi(c4))];
end
end