clear all; clc; close all;

L = 0.1;
D = 0.1; % L < D
t = 1;
i = 1000;

for n = 1:i
    
    a = rand(1,n);
    b = rand(1,n);
    g = rand(1,n); 
    xb = L + a*(1-2*L); %���������� ������� ��� ��� ������� 
    yb = L + b*(1-2*L);
    angs = g.*360;
    xe = xb + L*cosd(angs);
    ye = yb + L*sind(angs);
    Nx = (floor(xb/D) ~= floor(xe/D));
    N = sum(floor(xb/D) ~= floor(xe/D));
    P = N/max(n); %���������� 
    piest(t) = (2*L)/(P*D);%������ ��� � 
    t = t+1;
        
end

P = N/max(n) % ���������� 
PI = max(piest(n)) % �������� �

n = 1:i;
figure(1) %��������� ��� �� ���������� ��� � 
hold on 
plot([0 max(n)],[pi pi],'b')
 plot(n,piest,'bo')
%scatter(n,piest,'h')
xlabel('������� ������� - n'), ylabel('���������� ��� �'), title('���������� ��� � �� n ������')
grid on 

figure(2) %���������� ���������� ��� �� ��� ����� ����� �� ������� 
ax = axes;
hold on
plot(ax,[xe;xb],[ye;yb],'b')
plot(ax,[Nx.*xe ; Nx.*xb],[Nx.*ye ; Nx.*yb],'r')
title('������� �� ��� ������ ��� �������')
 axis square
glines = 0:D:1;
for i = 1:length(glines) % ���������� ��� ���������� ������� 
   xline(ax,glines(i));
end
hold off

