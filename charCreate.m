function character = charCreate(n)
%charCreate - creates different characters with various traits
%   num - order of character creation (used to make sure data is random)
%   age - character's age (1-5; 1 is young, 5 is old)
%   height - character's height (1-5, 1 is short, 5 is tall)
%   bmi - character's weight (1-5, 1 is skinny, 5 is fat)

%assign traits to characters following a normal distribution
mu = 0;
sigma = 1;
for c1 = 1:n
    character.num(c1) = c1;
    character.age(c1) = normrnd(mu,sigma);
    character.height(c1) = normrnd(mu,sigma);
    character.bmi(c1) = normrnd(mu,sigma);
end

%map values from normal distribution to 1-5 scale
%the scales aren't exactly the same for each trait, but are approximately
%close to eachother

%min/max of old values
origValAge = [min(character.age),max(character.age)];
origValHeight = [min(character.height),max(character.height)];
origValBmi = [min(character.bmi),max(character.bmi)];

%min/max of new values
newVal = [1,5];

%mapping values
newValAge = interp1(origValAge,newVal,character.age);
newValHeight = interp1(origValHeight,newVal,character.height);
newValBmi = interp1(origValBmi,newVal,character.bmi);

%replacing old values with new values
character.age = newValAge;
character.height = newValHeight;
character.bmi = newValBmi;
end