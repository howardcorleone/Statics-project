%2018/10/24 ͳ�Ʒ������� ��ҵһ ����
%�Թ�Ʊ000012���з�������ɼۺͳɽ�����Pearson��Spearman��
%��ϵ����

%��CSV�ж�ȡ����
N = csvread('000012.csv',1,1);

%�ɼ�
Data = (N(:,3) + N(:,4) ) ./ 2;
Amount = N(:,5);

%coeff Person���ϵ��
coeff = corr(Data , Amount);  
fprintf('Person���ϵ��Ϊ %f\n',coeff);

%Sperman���ϵ��
Scoeff = corr(Data , Amount , 'type' , 'Spearman');  
fprintf('Sperman���ϵ��Ϊ %f\n',Scoeff);
