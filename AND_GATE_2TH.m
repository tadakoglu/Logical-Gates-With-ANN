%TAYFUN ADAKO�LU 11253001 MATLAB HOMEWORK 3 (NEW )
%OR PROBLEM
x = [0 0 1 1; 0 1 0 1]; % input vectors of 2 elements' size
t = [0 1 1 1];
net = perceptron;
net = train(net,x,t); % input set and target set : training set
view(net)
y = net(x);

%AND PROBLEM 
%BU KODLAR G�NCEL MATLAB KODLARI ���N �RNEKT�R. L�TFEN AND ��LEM� ���N YORUM
%KODLARINI KALDIRINIZ.
%{
x = [0 0 1 1; 0 1 0 1]; % input vectors of 2 elements' size
t = [0 0 0 1];
net = perceptron;
net = train(net,x,t); % input set and target set : training set
view(net)
y = net(x);3
%}
