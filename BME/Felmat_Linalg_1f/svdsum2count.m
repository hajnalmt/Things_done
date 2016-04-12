%%% Lineáris Algebra 7.házi feladat %%%
%%% Készítette: Hajnal Máté (RJBSCJ) %%%

% A funkció bemeneti paratméterei egy képmátrix singular value 
% decomposition-ből származó U, S és V mátrixai, rangja és az érték, hogy
% hány tagaját adjuk össze diadikus felbontásnak, mekkora legyen a
% közelítés

% A kimeneti paraméterei:
% B = a közelített kép mátrixa,
% B_root_of_sqrsum = az elhagyott szinguláris értékek négyzetösszegének 
% gyök (A két mátrix távolsága Frobenius normában)
% B_max_left_singval = legnagyobb elhagyott szinguláris érték
function [B, B_root_of_sqrsum, B_max_left_singval] = svdsum2count(U,S,V,rank,count)

% Először nullázuk a kimeneti mátrixot és a V mátrixot transzponáljuk
% Utána egy for ciklussal összeadjuk az elemeket
B = zeros(rank);
V=V';
for i=1:1:count
    B = B + S(i,i)*U(:,i)*V(i,:);
end

% Egy for ciklussal összeadjuk az elhagyott szinguláris értékek négyzeteit
% és megkeressük a maximumot.
% Végül a négyzetösszegből gyököt vonunk
B_root_of_sqrsum=0;
B_max_left_singval=0;
for i=(count+1):1:rank
        if B_max_left_singval < S(i,i)
            B_max_left_singval = S(i,i);
        end
        B_root_of_sqrsum=B_root_of_sqrsum + S(i,i)^2;
end
B_root_of_sqrsum = sqrt(B_root_of_sqrsum);
end