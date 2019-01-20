%2018.11.07 方差分析

xlsread('data_sort.xlsx');
%数据已经排序，1-676 为男性数据，677-1333为女性数据

male = data(1:662,7);
female = data(677:1338,7);

X = [male,female];

p = anova1(X);