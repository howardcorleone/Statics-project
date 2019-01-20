%2018/10/24 统计分析方法 作业一
%求股票000001（股票代码）的历史股价的日均值（所有天数的股价
%求平均）、中位数、0.25分位数、0.75分位数，方差，标准差，变
%异系数，极差，四分位极差，偏度，峰度。

%从CSV中读取代码
%N = csvread('000001.csv',1,1)

%求日均值 = 14.2710
Data = (N(:,3) + N(:,4) ) ./ 2;
Avrange = mean(Data);
fprintf('日均值为 %f\n', Avrange);

%求中位数
Median = median(Data);
fprintf('中位数为 %f\n',Median);

%求0.25分位数
Q1 = quantile(Data,0.25);
fprintf('0.25分位数为 %f\n',Q1);

%求0.75分位数
Q3 = quantile(Data,0.75);
fprintf('0.75分位数为 %f\n',Q3);

%求方差
Var = var(Data);
fprintf('方差为 %f\n',Var);

%求标准差
Std = std(Data);
fprintf('标准差为 %f\n',Std);

%求变异系数
CV = 100 * Std ./ Avrange;
fprintf('变异系数为 %f%%\n',CV);

%极差
r = max(Data) - min(Data);
fprintf('极差为 %f\n',r);

%四分位极差
r4 = Q3 - Q1;
fprintf('四分位极差为 %f\n',r4);

%偏度
sk = skewness(Data);
fprintf('偏度为 %f,大于零，向左偏\n',sk);

%峰度
ku = kurtosis(Data);
fprintf('峰度为 %f\n，峰度为正，集中在中间',ku);
