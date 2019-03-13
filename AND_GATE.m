clc
%TAYFUN ADAKOÐLU 11253001 MATLAB HOMEWORK 3(OBSOLUTE(MODASI GEÇMÝÞ ANCAK HALA GEÇERLÝ KODLARLA))
%LOGICAL AND PROBLEM
P = [0 0 1 1; 0 1 0 1];
T = [0 0 0 1];

net = newp([0 1; 0 1],1); % 0 VE 1 KAPALI ARALIÐINDA DEÐER ALABÝLEN 2 ELEMANLI BÝR GÝRÝÞ VEKTÖRÜ VEKTÖR VE 1 NÖRONLU PERCEPTRON 

weight_init = net.IW{1,1}; %weights for the connection from the first input to the first layer as follows
% aðýrlýk matrisimiz, The weights to layer i from input j are net.IW{i,j},
% þu an 0 0

bias_init = net.b{1}; % 1. ve tek katmandaki nöronun önyargýsý/dengeleyicisi(bias) 0'dýr, atandý.

net.trainParam.epochs = 20; %TEKRAR
net = train(net,P,T);

weight_final = net.IW{1,1}; % eðitildikten sonraki deðerleri depoladýk.
bias_final = net.b{1};

simulation = sim(net,P);

