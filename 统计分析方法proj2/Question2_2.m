%2018.11.07 �������

%ת��ΪԪ������
data = readtable('data.xlsx');
data_cell = table2cell(data);

%�õ�����groupˮƽ��ֵ
sex = data_cell(:,2);
smoker = data_cell(:,5);

Y = data_cell(:,7);
Y = cell2mat(Y);

%X = [male,female];
varnames= {'sex','smoker'};
p = anovan(Y,{sex,smoker},'model','full','varnames',varnames);