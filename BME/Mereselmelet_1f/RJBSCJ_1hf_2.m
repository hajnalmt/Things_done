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