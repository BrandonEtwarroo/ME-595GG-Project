function [randM,randF] = randPeo(charM,charF,numRandM,numRandF)
%randPeo - randomizes the order of the male and female characters
%   randM - randomized order of males
%   randF = randomized order of females

%randomize order of males
randMales = randi([1,length(charM.num)],[1,numRandM]); %x random numbers between 1 and amount of males
for c1 = 1:length(randMales)
    randM.num(c1) = charM.num(randMales(c1));
    randM.age(c1) = charM.age(randMales(c1));
    randM.height(c1) = charM.height(randMales(c1));
    randM.bmi(c1) = charM.bmi(randMales(c1));
    randM.gen(c1) = charM.gen(randMales(c1));
end

%randomize order of females
randFemales = randi([1,length(charF.num)],[1,numRandF]); %x random numbers between 1 and amount of females
for c2 = 1:length(randFemales)
    randF.num(c2) = charF.num(randFemales(c2));
    randF.age(c2) = charF.age(randFemales(c2));
    randF.height(c2) = charF.height(randFemales(c2));
    randF.bmi(c2) = charF.bmi(randFemales(c2));
    randF.gen(c2) = charF.gen(randFemales(c2));
end
end