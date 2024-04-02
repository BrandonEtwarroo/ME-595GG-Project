function person = physChar(n)
%physChar - physcial characteristics of all people are determined here
%   for now all values are coming from the paper 'what makes you
%   click? - mate preferences in online dating; even then, i'm rounding
%   some data just to make a proof-of-concept sort of thing

for c1 = 1:n
    person.num(c1) = c1;
    person.age(c1) = randi([18,65]);
    person.looks(c1) = randi([11,100]);
    person.height(c1) = randi([160,196]);
    person.BMI(c1) = randi([18,33]);
end

end