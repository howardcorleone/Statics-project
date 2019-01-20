%2018/10/24 ͳ�Ʒ������� ��ҵһ
%���Ʊ000001����Ʊ���룩����ʷ�ɼ۵��վ�ֵ�����������Ĺɼ�
%��ƽ��������λ����0.25��λ����0.75��λ���������׼���
%��ϵ��������ķ�λ���ƫ�ȣ���ȡ�

%��CSV�ж�ȡ����
%N = csvread('000001.csv',1,1)

%���վ�ֵ = 14.2710
Data = (N(:,3) + N(:,4) ) ./ 2;
Avrange = mean(Data);
fprintf('�վ�ֵΪ %f\n', Avrange);

%����λ��
Median = median(Data);
fprintf('��λ��Ϊ %f\n',Median);

%��0.25��λ��
Q1 = quantile(Data,0.25);
fprintf('0.25��λ��Ϊ %f\n',Q1);

%��0.75��λ��
Q3 = quantile(Data,0.75);
fprintf('0.75��λ��Ϊ %f\n',Q3);

%�󷽲�
Var = var(Data);
fprintf('����Ϊ %f\n',Var);

%���׼��
Std = std(Data);
fprintf('��׼��Ϊ %f\n',Std);

%�����ϵ��
CV = 100 * Std ./ Avrange;
fprintf('����ϵ��Ϊ %f%%\n',CV);

%����
r = max(Data) - min(Data);
fprintf('����Ϊ %f\n',r);

%�ķ�λ����
r4 = Q3 - Q1;
fprintf('�ķ�λ����Ϊ %f\n',r4);

%ƫ��
sk = skewness(Data);
fprintf('ƫ��Ϊ %f,�����㣬����ƫ\n',sk);

%���
ku = kurtosis(Data);
fprintf('���Ϊ %f\n�����Ϊ�����������м�',ku);
