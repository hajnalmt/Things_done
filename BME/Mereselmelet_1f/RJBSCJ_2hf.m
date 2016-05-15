%%% Hajnal Máté Méréselmélet 2 hf %%%
% N=60,jel:B2 %
clc
clear all
close all

% Paraméterek
N=60;

%%% 1. feladat %%%
% A bázis
c=zeros(N,N);
for k=1:N
    c(k,:)=(exp(1i*2*pi/(N/(k-1))*(0:N-1)));
end
% A reciprokbázis
%for k=1:N
%    g(k,:)=(1/N)*exp(-i*2*pi*k/N*(0:N-1));
%end
g=inv(c');

% Ellenőrzés: g*c' == I(N) ? %
check=g*c';
diff=check-eye(N);
if (max(max(abs(diff))) > 10^-10)
    disp([char(10),'g*c_transzp != I(N)  --> Érvénytelen bázis-reciprokbázis rendszer']);
else
    disp([char(10),'g*c_transzp = I(N) --> Érvényes bázisok.']);
end

% Ortogonalitás ellenőrzése. 
if (diff*(c*c')) < 1e-10
    disp([char(10),'A bazis ortogonalis.']);
else   
    disp([char(10),'Hibas bazis!']);
end
if (diff*(g*g')) < 1e-10
    disp([char(10),'A reciprokbazis ortogonalis.']);    
else
    disp([char(10),'Hibas reciprokbazis!']);
end
% Tehát a feltételek teljesülnek.

%%% 2. feladat %%%
% Aszimmetrikus háromszögjel előállítása 0,5-ös egyenkomponenssel
% Megkreálva a jelet:
%for k=1:((N/4))
%    y(k)=0+(1/15)*k;            % 0-tól 1-ig, felfutó él negyed periódusig
%end
%for k=1:((N/2))
%    y((N/4)+k)=1-(1/15)*k;      % 1-től -1-ig lefutó él fél periódusig
%end
%for k=1:((N/4))
%    y((N*3/4)+k)=-1+(1/15)*k;   % -1-től 0-ig felfutó él negyed periódusig
%end
%y=y+0.5;                        % DC eltolás
%figure(1);
%stem(1:N,y);
%figure(2);
%plot(1:N,y);

%Használva a sawtooth függvényt:
t=0:1:N-1;
y = sawtooth((t+15)*2*pi/N,0.5)+0.5;
figure(1);
stem(t,y);

% Súlytényező meghatározása reciprokbázissal (jegyzet (202). képlet)
x=g*y';

% Ellenőrzés
y_check=c'*x;

figure(2);                      %Az eredeti- és a súlytényezőkből előállított jel
subplot(2,1,1); 
stem(y,'r');
subplot(2,1,2);
stem(real(y_check),'b');
% A két függvény valóban megyegyezik

%%% 3.feladat %%%
% Becslők előállítása (jegyzet (195) képlet) %%
x_b = zeros(N,1);          
for k = 1:N                  
    x_b = x_b + g(:,k)*y(k);     %súlyok becslése
end

% A hibarendszer 
x_delta=x-x_b;
figure(3)
stem(x_delta);

%%% 4.feladat %%%
% Két periódus előállítása
y2=[y y];
% Bázis és reciprok bázis bővítése 2N-re
c2=[c;c]';
g2=[g g];     
x2_b=zeros(N,length(y2));
y2_b=zeros(size(y2));

% A keresett becslő vektorok
for i = 1:1:length(y2)
    y2_b(i)= x2_b(:,i)' * N*g2(:,mod(i-1,N) + 1);
    x2_b(:,i+1)= (y2(i)-y2_b(i)) * g2(:,mod(i-1,N) + 1)+ x2_b(:,i);  
end
% A hiba
y2_delta = y2(1:end)-real(y2_b(1:end));
figure(4)
subplot(3,1,1); plot(y2); title('Alapjel: y');
subplot(3,1,2); plot(real(y2_b)); title('y becslése');
subplot(3,1,3); plot(y2_delta); title('y és y becslő különbsége, a hibajel');

%%% 5.feladat %%%
%Zajgenerátor: Gauss eloszlású rendszerzaj+megfigyelési zaj 
sigma_noise=1;             %A zaj szórása, állítható paraméter
mu_noise=0;                %A zaj várható értéke
%normrnd függvénnyel normál eloszlású jel generálása
noise_system = normrnd(mu_noise,sigma_noise,N,1); 
noise_observ = normrnd(mu_noise,sigma_noise,N,1); 
