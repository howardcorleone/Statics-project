%2018/10/24 统计分析方法 作业一 题二
%对股票000006股价进行分析，选取合适组距，进行统计，画出的直
%方图（价格-频率）和正态QQ图，直观判断数据是否来自正态分布
%总体，给出简要的判断依据。如果对000006股价的差值（相邻两个
%日期的股价差值，忽略缺失日期，例如有t_1, t_3, t_4,则差值为: t_3
%- t1, t_4 - t_3）,同理计算差值的直方图和正态QQ图，判断差值是否
%服从正态分布，给出简要的判断依据。

%从CSV中读取代码
N = csvread('000006.csv',1,1);

%元数据的直方图和QQ图，不是正态分布
Data = (N(:,3) + N(:,4) ) ./ 2;
figure(1);
histogram(Data,'Normalization','probability');
figure(2);
qqplot(Data);


%股价的差值
Data_sub = zeros(4340,1);
for i = 2 : 4341
    Data_sub(i-1,1) = Data(i,1) - Data(i - 1,1);
end

%差值的直方图和QQ图，明显属于正太分布
figure(3);
histogram(Data_sub,'Normalization','probability');
title("差值的直方图")

figure(4);
qqplot(Data_sub);
title("差值的QQ图")