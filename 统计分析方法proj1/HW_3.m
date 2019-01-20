%2018/10/24 统计分析方法 作业一 题三
%对股票000012进行分析，求股价和成交量的Pearson，Spearman相
%关系数。

%从CSV中读取代码
N = csvread('000012.csv',1,1);

%股价
Data = (N(:,3) + N(:,4) ) ./ 2;
Amount = N(:,5);

%coeff Person相关系数
coeff = corr(Data , Amount);  
fprintf('Person相关系数为 %f\n',coeff);

%Sperman相关系数
Scoeff = corr(Data , Amount , 'type' , 'Spearman');  
fprintf('Sperman相关系数为 %f\n',Scoeff);
