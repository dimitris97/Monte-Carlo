clear;clc;
Xn = 3;     % ������ ����
a = 3;
c = 3;
m = 2^31;
n = 10000;  % ����������� 
x1 = zeros(n,1); 

for i = 1:n
    x1(i,1) = mod(a*Xn+c,m); 
    Xn = x1(i,1);
end
i = 1:1:n;
y = x1/m;

% -- ����������� ������� ������� --
subplot(2,2,1);
hold on 
plot(i,y,'.')
title('�� ����� ��� �')
xlabel('����������� n')
ylabel('������� ������� ��� �')
hold off

% --���������� --
subplot(2,2,2);
hold on
hist(y,100)
title('�� ���������� ��� �')
xlabel('������� [0 1]')
ylabel('��������� ����������')
hold off

% -- ��������� ��� ������� --
subplot(2,2,[3,4]);
hold on
plot(y(1:end-2),y(2:end-1),'.b');
title('��������� ������ 2 ���������� ������� ��� Y')
xlabel('x_{2k}');
ylabel('x_{2k-1}');
