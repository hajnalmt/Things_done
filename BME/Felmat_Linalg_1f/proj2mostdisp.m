%%% Lineáris Algebra 8.házi feladat %%%
%%% Készítette: Hajnal Máté (RJBSCJ) %%%

%%% A funkciónak nincs bemeneti és kimeneti paramétere, egy 5*6-ös random 
%%% mátrixra fut le, melynek sorai a vektoraink, megkeresi a legnagyobb 
%%% szórást adó egyenes egységnyi irányvektorát, majd erre az egyenesre 
%%% rávetíti a vektorokat.

% A random mátrixunk az R, a 
R = randi(10,6,5);
A = zeros(6,5);
% Képezzük az átlagukat és vonjuk ki az eredetiből
sum = [0, 0, 0, 0, 0];
for i=1:6
    sum = sum + R(i,:);
end
avg = sum / 6;
for i=1:6
    A(i,:) = R(i,:)-avg;
end
A

