%%% Hajnal Máté Méréselmélet 1 hf %%%
% E rendszer, 2B adaptív eljárás %
clc
clear all
r=0.85;
q=0.14;
M=420;
P=17;

%%% 1. feladat %%%
% 1.1
% szinusz mintaszám vektor
% szinusz mintaszám vektor normálása
% alapharmonikus vektor
% véltelen kezdőfázis generálása a felharmonikusoknak
db=0:1:M-1;
db=db/M;
s=sin(2*pi*db);
phase = 2*pi*rand(M/2-1,1);

alpha=0.05
% felharmonikusok generálása, majd hozzáadása az alapharmonikushoz
for i=2:M/2
    s = s+sin(i*2*pi*db+phase(i-1))
end

% 1.2
% komponenesekre bontás
% egyes komponensek amplitúdója
% egyes komponensek fázisa
U=fft(s);
A_u=abs(U);
p_u=unwrap(angle(U));

% 1.3
% modellezendő rendszer átviteli függvénye
% szűrt minták
% átviteli függvény együtthatói
system = tf ([(1-r), 0, 0, 0], [1, 0, 0, 0, r], 1);
%fprintf('Az átviteli függvény együtthatói', P);
filt_ser = impulse(system,(1:P))

% válaszjel generálása
% abszolut értéke és fázisa
y=lsim (system, s);
y = y + alpha*y.^5;

Y=fft(y);
A_y=abs(Y);
p_y=unwrap(angle(A_y));

% 1.4
% X mátrix első sora
% X mátrix első oszlopa
% X mátrix
top = [0 s(1:end-1)];
left = zeros(P,1);
X = toeplitz(left,top);

% R mátrix kiszámítása
% R mátrix normálása
R = X*X';
R = R/M;

% P mátrix kiszámítása
% P mátrix normálása
p = X * y; 
p = p/M;

%fprintf('dimW=%d (P). W együtthatói', P);
% lineáris kombinátor súlytényezői, inv(R)*P
W = inv(R)*p;

% 1.5
% az átviteli függvény együthatói
% együtthatók összevetése
filt_ser(1:P)
fprintf('dimW=%d (P), sorfejtett alak és a lineáris \n kombinátor együtthatóinak eltérése',P);
filt_ser(1:P)-W

% modellezett rendszer előállítása
% becsült minták generálása
sys = tf([0; W]',1,1,'variable','z^-1');
ykalap = lsim (sys, s);

% Diagrammok
% A modellezendő rendszer és a lineáris kombinátor együthatói
figure(1)
subplot(2,1,1)
stem((1:P), filt_ser(1:P))
hold on
stem((1:P),W,'r')
hold off
subplot(2,1,2)
stem((1:P), filt_ser(1:P)-W)

% A modellezendő rendszer és a lineáris kombinátor átvilteleinek
% abszolutértékei
figure(2)
subplot(2,1,1)
stem((-M/2:M/2-1),abs(fft(y)/M))
hold on
stem((-M/2:M/2-1),abs(fft(ykalap)/M),'r')
hold off
subplot(2,1,2)
stem((-M/2:M/2-1),abs(fft(y)/M)-abs(fft(ykalap)/M))

% A modellezendő rendszer és a lineáris kombinátor átviteleinek fázisai
figure(3)
subplot(2,1,1)
stem(wrapToPi(angle(fft(y)/M)))
ylim([-pi pi])
hold on
stem(wrapToPi(angle(fft(ykalap)/M)),'r')
ylim([-pi pi])
hold off
subplot(2,1,2)
stem(wrapToPi(wrapToPi(angle(fft(y)/M))-wrapToPi(angle(fft(ykalap)/M))))
ylim([-pi pi])

%%% 2.feladat %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear all
r=0.85;
q=0.14;
M=420;
P=17;
db=0:1:M-1;
db=db/M;
s=sin(2*pi*db);
phase = 2*pi*rand(M/2-1,1);
alpha=0.05
% felharmonikusok generálása, majd hozzáadása az alapharmonikushoz
for i=2:M/2
    s = s+sin(i*2*pi*db+phase(i-1))
end
system = tf ([(1-r), 0, 0, 0], [1, 0, 0, 0, r], 1);
top = [0 s(1:end-1)];
left = zeros(P,1);
X = toeplitz(left,top);
R = X*X';
R = R/M;

% 2.B
% lambda az R mátrix sajátértékeinek maximuma
% bátorsági tényező definiálása
lambda = max(eig(R));
LMS_alpha = X*X'/(3000* lambda);
szinusz = s;

alpha=0.05
% felharmonikusok generálása, majd hozzáadása az alapharmonikushoz
for i=2:M/2
    s = s+sin(i*2*pi*db+phase(i-1))
end

% 21000 mintából álló eseménytér létrehozása
for i=1:99
    szinusz = [szinusz s]; 
end
y = lsim (system, szinusz);
y = y + alpha*y.^5;

% kezdeti mátrix nullázása
W = zeros(P,42000);

for i=P:42000/2
    X=szinusz(i-P+1:i); % P darab minta kivétele
    e=y(i)-X*W(:,i);
    W(:,i+1)=W(:,i)+LMS_alpha*X'*e/(X*X'); % LMS algoritmus számolása
end

% r q-val való csökkentése
system = tf ([(1-(r-q)), 0, 0, 0], [1, 0, 0, 0, (r-q)], 1);
y = lsim (system, szinusz);
y = y + alpha*y.^5;

for i=42000/2+1:42000
    X=szinusz(i-P+1:i); % P darab minta kivétele
    e=y(i)-X*W(:,i);
    W(:,i+1)=W(:,i)+LMS_alpha*X'*e/(X*X'); % LMS algoritmus számolása
end

fprintf('Együtthatók, eredeti');
W(:,42000/2)

fprintf('Együtthatók, csökkentett r-rel');
W(:,42000)
    
figure(4)
% eredmények csökkenő sorrendbe rendezése
[maxW, maxNum] = sort(abs(W(:,end-1)),'descend')
hold all
% 5 legnagyobb együttható kirajzolása
for i=1:5
    plot(abs(W(maxNum(i),:)'));
end
legend(strcat('W',num2str(maxNum(1:5),-1)))
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear all
r=0.85;
q=0.14;
M=420;
P=17;
db=0:1:M-1;
db=db/M;
s=sin(2*pi*db);
phase = 2*pi*rand(M/2-1,1);
alpha=0.05
% felharmonikusok generálása, majd hozzáadása az alapharmonikushoz
for i=2:M/2
    s = s+sin(i*2*pi*db+phase(i-1))
end
s = s + alpha*s.^5;
system = tf ([(1-r), 0, 0, 0], [1, 0, 0, 0, r], 1);
top = [0 s(1:end-1)];
left = zeros(P,1);
X = toeplitz(left,top);
R = X*X';
R = R/M;

%%% 3.feladat %%%
% 6 együtthatót keresünk
P = 6;
lambda = max(eig(R));
szinusz = s;

alpha=0.05
% felharmonikusok generálása, majd hozzáadása az alapharmonikushoz
for i=2:M/2
    s = s+sin(i*2*pi*db+phase(i-1))
end

% 21000 mintából álló eseménytér létrehozása
for i=1:99
    szinusz = [szinusz s]; 
end
y = lsim (system, szinusz);
y = y + alpha*y.^5;
 
% kezdeti mátrix nullázása
W = zeros(P,42000);

for i=P:42000-1
    % a megadott formula szerint 2 gerjesztő minta,
    % valamint 4 kimeneti minta kiválasztása
    X=[szinusz(i-1:i), y(i-3:i)'];
    LMS_alpha = X*X'/(1000* lambda);
    e=y(i+1)-X*W(:,i);
    W(:,i+1)=W(:,i)+LMS_alpha*X'*e/(X*X'); % LMS algoritmus számolása
end

fprintf('Együtthatói:');
W(:,end)

figure(5)
hold all
for i=1:6
	plot(W(i,:)');
end
legend('W0','W1','W2','W3','W4','W5',-1)
plot(W')

%%% r-q-s eset %%%
system = tf ([(1-(r-q)), 0, 0, 0], [1, 0, 0, 0, (r-q)], 1);
y = lsim (system, szinusz);
y = y + alpha*y.^5;
 
% kezdeti mátrix nullázása
W = zeros(P,42000);
for i=P:42000-1
    % a megadott formula szerint 2 gerjesztő minta,
    % valamint 4 kimeneti minta kiválasztása
    X=[szinusz(i-1:i), y(i-3:i)']; 
    LMS_alpha = X*X'/(1000* lambda);
    e=y(i+1)-X*W(:,i);
    W(:,i+1)=W(:,i)+LMS_alpha*X'*e/(X*X'); % LMS algoritmus számolása
end

fprintf('Együtthatói:');
W(:,end)

figure(6)
hold all
for i=1:6
	plot(W(i,:)');
end
legend('W0','W1','W2','W3','W4','W5',-1)
plot(W')