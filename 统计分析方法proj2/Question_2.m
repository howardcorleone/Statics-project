%2018.11.07 �������

xlsread('data_sort.xlsx');
%�����Ѿ�����1-676 Ϊ�������ݣ�677-1333ΪŮ������

male = data(1:662,7);
female = data(677:1338,7);

X = [male,female];

p = anova1(X);