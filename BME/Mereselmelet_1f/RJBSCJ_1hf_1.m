%%% Hajnal Máté Méréselmélet 1 hf %%%
% E rendszer, 2B adaptív eljárás %
clc
clear all
r=0.85;
q=0.14;
M=210;
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

% felharmonikusok generálása, majd hozzáadása az alapharmonikushoz
for i=2:M/2
    s = s+sin(i*2*pi*db+phase(i-1));
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