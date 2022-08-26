clear all; clc;

%������� ��� �� ������������� ��� ��� �������� ��� � 

N = 10000;

x = rand(1,N);  % ���������� ������� ������� 
y = rand(size(x));

theta = linspace(0,2*pi);
xc = 0.5*cos(theta)+0.5;
yc = 0.5*sin(theta)+0.5;
in = inpolygon(x,y,xc,yc);
s = sum(in);
p = 4*s/N % �������� ��� � 

%--���������--

plot(xc,yc,x(in),y(in),'.y',x(~in),y(~in),'.r')
xlabel(['N =' , num2str(N)])
axis equal