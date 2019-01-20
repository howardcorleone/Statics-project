%2018 11.07 统计分析方法第二次作业
%回归分析

xlsread('data.xlsx');

age = data(1:1333,1);
bmi = data(1:1333,3);
child = data(1:1333,4);

%获取大的值
charge = data(1:1333,7);

X = [ones(length(charge),1),age,bmi,child];
Y = charge;

[b, bint,r,rint,stats] = regress(Y,X);
%rcoplot(r,rint);
z = b(1) + b(2)*age + b(3)*bmi + b(4)*child;

Data_1344 = Regress_function(50,30.97,3);
Data_1345 = Regress_function(18,31.92,0);
Data_1346 = Regress_function(18,36.85,0);
Data_1347 = Regress_function(21,25.8,0);
Data_1348 = Regress_function(61,29.07,0);