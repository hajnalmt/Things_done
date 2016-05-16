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
    c(k,:)=(exp(1j*2*pi/(N/(k-1))*(0:N-1)));
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
disp(x);
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
sigma_sys=0.001;             %A zajok szórásai állítható paraméterek
sigma_obs=0.001;
mu_noise=0;              %A zaj várható értéke
%normrnd függvénnyel normál eloszlású jel generálása
noise_sys = normrnd(mu_noise,sigma_sys,N,1); 
noise_obs = normrnd(mu_noise,sigma_obs,N,1);

%%% 6.feladat %%%
% A jelanalizátor Kalman-prediktorrá alakítása
% Jegyzet: 8.ea/5.oldal (175) és környéke,
% illetve 34. ábra
%
% A rendszermodell: x(n+1)=Ax(n)+w(n)
% A megfigyelés: y(n)=Cx(n)+n(n)
% ,ahol A - A rendszermátrix
%       C - a megfigyelési mátrix
%
% A Kálmán prediktor egyenletei:
% X_b(n+1)= A*X_b(n)+G(n)*(y(n)-C*X_b(n))
% G(n)=A*P(n)*C'*[C*P(n)*C'+R(n)]^-1
% P(n+1)=(A-G(n)*C)*P(n)*A'+Q(n)
% 
%  ,ahol 
%  P - a paraméterbecslés "kovariancia" mátrixa
%  G - a prediktor erősítése
%  Q, R - korrekciós mátrixok
%   ,ahol
%    Q=E{w(n)*w(n)'}
%    R=E{n(n)*n(n)'}  
%     ,ahol n - megfigyelési zaj 
%           w - rendszerzaj


%Q és R előállítása
Q=noise_sys*noise_sys';
R=noise_obs*noise_obs';

%Az A mátrix előállítása: főátlóban zm elemek, máshol nulla
m = 0:N-1; 
zm = exp((2*pi*m * 1j)/N);
A = diag(zm);

%Kicsatolás mátrixa: csupa 1-es
C = ones(N,N);
G = inv(c');

%X becslő init
X_b=zeros(N,N);

%Paraméterbecslő mátrix (nulladik)
P=zeros(N);
P=(A-G*C)*P*A'+Q;

%Kálmán prediktor:
for i = 1 : N-1
    X_b(i+1,:)=A*X_b(i,:)'+G*(y-C*X_b(i,:)');
    G=A*P*C'*(C*P*C'+R)^-1;
    P=(A-G*C)*P*A'+Q;
    
end


% A súlybecslőnk lenullázása
%x_b = zeros(N,N);

% Leállási korlát
%epsilon = 1e-4;
%diff = 1;

%Q = eye(N);
%C = ones(N,N);
%P = Q;
%R = 0;
%i = 0;
%G = zeros(N,N);
% Akkor állunk le, amikor a becslő relatív változása elér egy előre
% meghatározott értéket
%while((diff > epsilon) && (i < 3*N))
%    idx = mod(i,N)+1;
%    i = i + 1;
%    y = C(:,idx).'* x + noise_obs(idx);                 %y(n)
%    x = x + noise_sys + 1j*noise_sys;                   %x(n+1)
%    y_b(i) = C(:,idx).'* x_b(:,i);                      %y_b(n)
%    y_delta = y - y_b(i);                               %y_delta
%    R = (((sqrt(R)*(i-1)) + y_delta)/(i)).^2;           %varianca becslő
%    G(:,i) = P*C(:,idx)*inv(C(:,idx).'*P*C(:,idx) + R); %G(n)
%    x_b(:,i+1) = x_b(:,i) + G(:,i)*y_delta;             %x_b(n)
%    P = (eye(N) - G(:,i)*C(:,idx).')*P + Q;             %P(n+1)
%    Ew = x_b(:,i+1)-x_b(:,i);                           %variancia becslő
%    Q = (sqrt((sqrt(Q)*(i-1)).^2 + Ew*Ew.')/(i)).^2;
%    if(i > 1)
        %leállási feltétel számítása
%        change = x_b(:,i) - x_b(:,i-1);
%        diff = norm(change)/norm(x_b(:,i));
%    end
%end

figure(5)
plot(real(x_b));
figure(6)
plot(G);