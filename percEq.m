function [objValM,objValF,percValM,percValF] = percEq(randM,randF)
%percEq - calculates the objective and perceived values of attractiveness
%   objValM - the objective measure of attractiveness for males (avg of parts)
%   objValM - the objective measure of attractiveness for females (avg of parts)
%   percValM - the perceived value of attractiveness for males f->m
%   (weibull)
%   percValF - the perceived value of attractiveness for females m->f
%   (normal)

%objective measure of attractiveness
%assumed to be an average of all the applicable traits for both men and women
%applicable traits include: age,height,bmi

%objective value for males
objValM = [];
for c1 = 1:length(randM.num)
    objValM = [objValM,mean([randM.age(c1),randM.height(c1),randM.bmi(c1)])]; 
end

%perceived value for males
percValM = [];
w = [1 1 1];
while sum(w)~=1
    w(1) = round(rand(),1);
    w(2) = round(rand(),1);
    w(3) = round(rand(),1);
    sum(w);
end
for c3 = 1:length(randM.num)
    percValM = [percValM,w(1)*randM.age(c3)+w(2)*randM.height(c3)+w(3)*randM.bmi(c3)];
end

%objective value for females
objValF = [];
for c2 = 1:length(randF.num)
    objValF = [objValF,mean([randF.age(c2),randF.height(c2),randF.bmi(c2)])]; 
end

%perceived value for females
percValF = [];
for c4 = 1:length(randF.num)
    percValF = [percValF,3/8*randF.age(c4)+3/8*randF.height(c4)+2/8*randF.bmi(c4)];
end
end