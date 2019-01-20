%2018.11.07 方差分析

%转化为元胞数组
data = readtable('data.xlsx');
data_cell = table2cell(data);

%得到两个group水平的值
sex = data_cell(:,2);
smoker = data_cell(:,5);

Y = data_cell(:,7);
Y = cell2mat(Y);

%X = [male,female];
varnames= {'sex','smoker'};
p = anovan(Y,{sex,smoker},'model','full','varnames',varnames);