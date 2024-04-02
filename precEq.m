function precNum = precEq(person,n)
%PrecEQ - The perceived equation; for now it's how each person is perceived
%   im incorrectly (i think) using the statistic values provided by the
%   paper "what makes you click? - mate preferences in online dating;
for c2 = 1:n
    %age
    if person.age(c2)<30 %(5+ years younger value)
        precNum(c2) = person.age(c2)*(1-0.03);
    elseif person.age(c2)>=30 && person.age(c2)<40 %(10+ years younger value)
        precNum(c2) = person.age(c2)*(1-0.57);
    elseif person.age(c2)>=40 && person.age(c2)<50 %(10+ years younger value)
        precNum(c2) = person.age(c2)*(1-0.19);
    else %(age>=50; 10+ years younger value)
        precNum(c2) = person.age(c2)*(1-0.53);
    end
    %looks (only doing the first 4 for now)
    if person.looks(c2)<=20
        precNum(c2) = precNum(c2)+person.looks(c2)*(1+0.09);
    elseif person.looks(c2)<=30
        precNum(c2) = precNum(c2)+person.looks(c2)*(1+0.36);
    elseif person.looks(c2)<=40
        precNum(c2) = precNum(c2)+person.looks(c2)*(1+0.47);
    else %person.looks(c2)<=50
        precNum(c2) = precNum(c2)+person.looks(c2)*(1+0.49);
    end
    %height (only doing the first 4)
    if person.height(c2)<=163 %(5'3-5'4)
        precNum(c2) = precNum(c2)+person.height(c2)*(1+0.07);
    elseif person.height(c2)<=168 %(5'5-5'6)
        precNum(c2) = precNum(c2)+person.height(c2)*(1+0.15);
    elseif person.height(c2)<=173 %(5'7-5'8)
        precNum(c2) = precNum(c2)+person.height(c2)*(1+0.12);
    else %person.height(c2)<=178 (5'9-5'10)
        precNum(c2) = precNum(c2)+person.height(c2)*(1+0.09);
    end
    if person.BMI(c2)<=20 %(18-20)
        precNum(c2) = precNum(c2)+person.BMI(c2)*(1-0.06);
    elseif person.BMI(c2)<=22 %(20-22)
        precNum(c2) = precNum(c2)+person.BMI(c2)*(1-0.22);
    elseif person.BMI(c2)<=24 %(22-24)
        precNum(c2) = precNum(c2)+person.BMI(c2)*(1-0.43);
    else %person.BMI(c2)<=26 (24-26)
        precNum(c2) = precNum(c2)+person.BMI(c2)*(1-0.88);
    end

end
end