clc
%TAYFUN ADAKO�LU 11253001 MATLAB HOMEWORK 3(OBSOLUTE(MODASI GE�M�� ANCAK HALA GE�ERL� KODLARLA))
%LOGICAL OR PROBLEM
P = [0 0 1 1; 0 1 0 1]; %�NPUT SET A GROUP OF 2X1 VECTORS
T = [0 1 1 1];   %TARGET SET

net = newp([0 1; 0 1],1); % 0 VE 1 KAPALI ARALI�INDA DE�ER ALAB�LEN 2 ELEMANLI B�R G�R�� VEKT�R� VEKT�R VE 1 N�RONLU PERCEPTRON 

weight_init = net.IW{1,1}; %weights for the connection from the first input to the first layer as follows �u an 0 0
%The weights to layer i from input j are net.IW{i,j},

bias_init = net.b{1};  % 1. ve tek katmandaki n�ronun �nyarg�s�/dengeleyicisi(bias) 0'd�r, atand�.

net.trainParam.epochs = 20; %TEKRAR
net = train(net,P,T);

weight_final = net.IW{1,1}; % e�itildikten sonraki de�erleri depolad�k.
bias_final = net.b{1};% e�itildikten sonraki de�erleri depolad�k.

simulation = sim(net,P);



