%%% Lineáris Algebra 8.házi feladat %%%
%%% Készítette: Hajnal Máté (RJBSCJ) %%%

%%% A funkciónak nincs bemeneti és kimeneti paramétere, egy 5*6-ös random 
%%% mátrixra fut le, melynek sorai a vektoraink, megkeresi a legnagyobb 
%%% szórást adó egyenes egységnyi irányvektorát, majd erre az egyenesre 
%%% rávetíti a vektorokat.

% A random mátrixunk az R, a zérusvektorátlagú pedig az A
R = randi(10,6,5);
A = zeros(6,5);
% Képezzük az átlagukat és vonjuk ki az eredetiből, így lesz a vektorok
% átlaga zérus
sum = [0, 0, 0, 0, 0];
for i=1:6
    sum = sum + R(i,:);
end
avg = sum / 6;
for i=1:6
    A(i,:) = R(i,:)-avg;
end

% Végezzük el az SVD felbontást, majd használjuk az Eckart-Young tételt 
% k=1-re ugyanis egyenesre vetítünk
[U, S, V]=svd(A);
Vt=V';
B=S(1,1)*U(:,1)*Vt(1,:);

% Ellenőrizhetjük, hogy B rangja valóban egy
% rank(B)

% Az egyenes irányvektora, két vetület vektor különbsége normalizálva
x = normr(B(1,:)-B(2,:));
% A kapott vetületek pedig:
B

% A szórásnégyzetek
Sn_1 = S(1,1)^2/6
Sn_2 = 1/6*x*A'*A*x'
Sn_3 = eigs(A'*A,1)/6
