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

%%% 3.feladat %%%
% 6 együtthatót keresünk
P = 6;
lambda = max(eig(R));
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

for i=P:21000-1
    % a megadott formula szerint 2 gerjesztő minta,
    % valamint 4 kimeneti minta kiválasztása
    X=[szinusz(i-1:i), y(i-3:i)'];
    LMS_alpha = X*X'/(1000* lambda);
    e=y(i+1)-X*W(:,i);
    W(:,i+1)=W(:,i)+LMS_alpha*X'*e/(X*X'); % LMS algoritmus számolása
end

fprintf('Együtthatói:');
W(:,end)

figure(7)
hold all
for i=1:6
	plot(W(i,:)');
end
legend('W0','W1','W2','W3','W4','W5',-1)
plot(W')

%%% r-q-s eset %%%
system = tf ([(1-(r-q)), 0, 0, 0], [1, 0, 0, 0, (r-q)], 1);
y = lsim (system, szinusz);
 
% kezdeti mátrix nullázása
W = zeros(P,21000);
for i=P:21000-1
    % a megadott formula szerint 2 gerjesztő minta,
    % valamint 4 kimeneti minta kiválasztása
    X=[szinusz(i-1:i), y(i-3:i)']; 
    LMS_alpha = X*X'/(1000* lambda);
    e=y(i+1)-X*W(:,i);
    W(:,i+1)=W(:,i)+LMS_alpha*X'*e/(X*X'); % LMS algoritmus számolása
end

fprintf('Együtthatói:');
W(:,end)

figure(8)
hold all
for i=1:6
	plot(W(i,:)');
end
legend('W0','W1','W2','W3','W4','W5',-1)
plot(W')