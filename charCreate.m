function [charM,charF] = charCreate(n,mu,sigma)
%charCreate - creates different characters with various physical traits
%   num - order of character creation (used to make sure data is random)
%   age - character's age (1-5; 1 is young, 5 is old)
%   height - character's height (1-5; 1 is short, 5 is tall)
%   bmi - character's weight (1-5; 1 is skinny, 5 is fat)
%   gen - character's gender (0 is male, 1 is female)

%random number generator
rng('default')

%assign physical traits to characters following a normal distribution
for c1 = 1:n
    character.num(c1) = c1;
    character.age(c1) = normrnd(mu,sigma);
    character.height(c1) = normrnd(mu,sigma);
    character.bmi(c1) = normrnd(mu,sigma);
    if mod(c1,2) == 0 %male
        character.gen(c1) = 0;
    else %mod(c1,2) == 1; female
        character.gen(c1) = 1;
    end
end

% seperate male and female characters
countM = 1;
countF = 1;
for c2 = 1:n
    if character.gen(c2) == 0 %male characters
        charM.num(countM) = character.num(c2);
        charM.age(countM) = character.age(c2);
        charM.height(countM) = character.height(c2);
        charM.bmi(countM) = character.bmi(c2);
        charM.gen(countM) = character.gen(c2);
        countM = countM + 1;
    else %character.gen(c2)==1 %female characters
        charF.num(countF) = character.num(c2);
        charF.age(countF) = character.age(c2);
        charF.height(countF) = character.height(c2);
        charF.bmi(countF) = character.bmi(c2);
        charF.gen(countF) = character.gen(c2);
        countF = countF + 1;
    end
end
end