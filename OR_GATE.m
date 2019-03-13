clc
%TAYFUN ADAKOÐLU 11253001 MATLAB HOMEWORK 3(OBSOLUTE(MODASI GEÇMÝÞ ANCAK HALA GEÇERLÝ KODLARLA))
%LOGICAL OR PROBLEM
P = [0 0 1 1; 0 1 0 1]; %ÝNPUT SET A GROUP OF 2X1 VECTORS
T = [0 1 1 1];   %TARGET SET

net = newp([0 1; 0 1],1); % 0 VE 1 KAPALI ARALIÐINDA DEÐER ALABÝLEN 2 ELEMANLI BÝR GÝRÝÞ VEKTÖRÜ VEKTÖR VE 1 NÖRONLU PERCEPTRON 

weight_init = net.IW{1,1}; %weights for the connection from the first input to the first layer as follows þu an 0 0
%The weights to layer i from input j are net.IW{i,j},

bias_init = net.b{1};  % 1. ve tek katmandaki nöronun önyargýsý/dengeleyicisi(bias) 0'dýr, atandý.

net.trainParam.epochs = 20; %TEKRAR
net = train(net,P,T);

weight_final = net.IW{1,1}; % eðitildikten sonraki deðerleri depoladýk.
bias_final = net.b{1};% eðitildikten sonraki deðerleri depoladýk.

simulation = sim(net,P);



