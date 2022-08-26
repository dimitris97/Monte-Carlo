clear all; clc;
% -- Marsenne Twister --
n = 10000;  % �����������
y = rand(1,n);
% -- ��������� --
subplot(2,2,[1,2])
hold on
hist(y,100);
title('n ������� �������')
xlabel('������� [0 1]')
ylabel('��������� ����������')
hold off
% --��������� --
subplot(2,2,[3,4])
hold on
plot(y(1:end-2),y(2:end-1),'.b');
title('��������� ��� ���������� ������� ��� Y')
xlabel('x_{2k}')
ylabel('x_{2k-1}')
hold off
