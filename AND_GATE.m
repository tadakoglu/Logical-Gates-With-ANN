clc
%TAYFUN ADAKO�LU 11253001 MATLAB HOMEWORK 3(OBSOLUTE(MODASI GE�M�� ANCAK HALA GE�ERL� KODLARLA))
%LOGICAL AND PROBLEM
P = [0 0 1 1; 0 1 0 1];
T = [0 0 0 1];

net = newp([0 1; 0 1],1); % 0 VE 1 KAPALI ARALI�INDA DE�ER ALAB�LEN 2 ELEMANLI B�R G�R�� VEKT�R� VEKT�R VE 1 N�RONLU PERCEPTRON 

weight_init = net.IW{1,1}; %weights for the connection from the first input to the first layer as follows
% a��rl�k matrisimiz, The weights to layer i from input j are net.IW{i,j},
% �u an 0 0

bias_init = net.b{1}; % 1. ve tek katmandaki n�ronun �nyarg�s�/dengeleyicisi(bias) 0'd�r, atand�.

net.trainParam.epochs = 20; %TEKRAR
net = train(net,P,T);

weight_final = net.IW{1,1}; % e�itildikten sonraki de�erleri depolad�k.
bias_final = net.b{1};

simulation = sim(net,P);

