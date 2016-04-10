%%% Hajnal Máté Méréselmélet 1 hf %%%
% E rendszer, 2B adaptív eljárás %
clc
clear all
r=0.85;
q=0.14;
M=210;
P=17;
db=0:1:M-1;
db=db/M;
s=sin(2*pi*db);
phase = 2*pi*rand(M/2-1,1);
for i=2:M/2
    s = s+sin(i*2*pi*db+phase(i-1));
end
system = tf ([(1-r), 0, 0, 0], [1, 0, 0, 0, r], 1);
top = [0 s(1:end-1)];
left = zeros(P,1);
X = toeplitz(left,top);
R = X*X';
R = R/M;
 
%%% 2.feladat %%%
% 2.A
% lambda az R mátrix sajátértékeinek maximuma
% bátorsági tényező definiálása
lambda = max(eig(R));
LMS_mu = 1/(3000*lambda);
szinusz = s;
 
for i=2:M/2
    s = s+sin(i*2*pi*db+phase(i-1));
end
 
% 21000 mintából álló eseménytér létrehozása
for i=1:99
    szinusz = [szinusz s]; 
end
y = lsim (system, szinusz);
 
% kezdeti mátrix nullázása
W = zeros(P,21000);
 
for i=P:21000/2
    X=szinusz(i-P+1:i); % P darab minta kivétele
    e=y(i)-X*W(:,i);
    W(:,i+1)=W(:,i)+2*LMS_mu*X'*e; % LMS algoritmus számolása
end
 
% r q-val való csökkentése
system = tf ([(1-(r-q)), 0, 0, 0], [1, 0, 0, 0, (r-q)], 1);
y = lsim (system, szinusz);
 
for i=21000/2+1:21000
    X=szinusz(i-P+1:i); % P darab minta kivétele
    e=y(i)-X*W(:,i);
    W(:,i+1)=W(:,i)+2*LMS_mu*X'*e; % LMS algoritmus számolása
end
 
fprintf('Együtthatók, eredeti');
W(:,21000/2)
 
fprintf('Együtthatók, csökkentett r-rel');
W(:,21000)
    
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear all
r=0.85;
q=0.14;
M=210;
P=17;
db=0:1:M-1;
db=db/M;
s=sin(2*pi*db);
phase = 2*pi*rand(M/2-1,1);
for i=2:M/2
    s = s+sin(i*2*pi*db+phase(i-1));
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

for i=2:M/2
    s = s+sin(i*2*pi*db+phase(i-1));
end

% 21000 mintából álló eseménytér létrehozása
for i=1:99
    szinusz = [szinusz s]; 
end
y = lsim (system, szinusz);

% kezdeti mátrix nullázása
W = zeros(P,21000);

for i=P:21000/2
    X=szinusz(i-P+1:i); % P darab minta kivétele
    e=y(i)-X*W(:,i);
    W(:,i+1)=W(:,i)+LMS_alpha*X'*e/(X*X'); % LMS algoritmus számolása
end

% r q-val való csökkentése
system = tf ([(1-(r-q)), 0, 0, 0], [1, 0, 0, 0, (r-q)], 1);
y = lsim (system, szinusz);

for i=21000/2+1:21000
    X=szinusz(i-P+1:i); % P darab minta kivétele
    e=y(i)-X*W(:,i);
    W(:,i+1)=W(:,i)+LMS_alpha*X'*e/(X*X'); % LMS algoritmus számolása
end

fprintf('Együtthatók, eredeti');
W(:,21000/2)

fprintf('Együtthatók, csökkentett r-rel');
W(:,21000)
    
figure(5)
% eredmények csökkenő sorrendbe rendezése
[maxW, maxNum] = sort(abs(W(:,end-1)),'descend')
hold all
% 5 legnagyobb együttható kirajzolása
for i=1:5
    plot(abs(W(maxNum(i),:)'));
end
legend(strcat('W',num2str(maxNum(1:5),-1)))
hold off

% 2.C
% lambda az R mátrix sajátértékeinek maximuma
% bátorsági tényező definiálása
lambda = max(eig(R));
LMS_mu = 1/(10*lambda);
szinusz = s;
 
% feladat paraméterek
lambda = 0.9;
v = 0.1;
R = eye(P);
 
for i=2:M/2
    s = s+sin(i*2*pi*db+phase(i-1));
end

% 21000 mintából álló eseménytér létrehozása
for i=1:99
    szinusz = [szinusz s]; 
end
y = lsim (system, szinusz);
 
% kezdeti mátrix nullázása
W = zeros(P,21000);
 
for i=P:21000/2
    X=szinusz(i-P+1:i); % P darab minta kivéele
    num = (R*X'*X*R);
    den = ((lambda/v)+X*R*X');
    R = (1/lambda)*(R-(num/den));
    e=y(i)-X*W(:,i);
    W(:,i+1)=W(:,i)+2*LMS_mu*R*X'*e; % LMS algoritmus számolása
end
 
% r q-val való csökkentése
system = tf ([(1-(r-q)), 0, 0, 0], [1, 0, 0, 0, (r-q)], 1);
y = lsim (system, szinusz);
 
for i=21000/2+1:21000
    X=szinusz(i-P+1:i); % P darab minta kivétele
    num = (R*X'*X*R);
    den = ((lambda/v)+X*R*X');
    R = (1/lambda)*(R-(num/den));
    e=y(i)-X*W(:,i);
    W(:,i+1)=W(:,i)+2*LMS_mu*R*X'*e; % LMS algoritmus számolása
end
 
fprintf('Együtthatók, eredeti');
W(:,21000/2)
 
fprintf('Együtthatók, csökkentett r-rel');
W(:,21000)
    
figure(6)
% eredmények csökkenő sorrendbe rendezése
[maxW, maxNum] = sort(abs(W(:,end-1)),'descend')
hold all
% 5 legnagyobb együttható kirajzolása
for i=1:5
    plot(abs(W(maxNum(i),:)'));
end
legend(strcat('W',num2str(maxNum(1:5),-1)))
hold off