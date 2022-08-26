clear all; clc; close all;

L = 0.1;
D = 0.1; % L < D
t = 1;
i = 1000;

for n = 1:i
    
    a = rand(1,n);
    b = rand(1,n);
    g = rand(1,n); 
    xb = L + a*(1-2*L); %Δημιουργία σημείων για τις βελόνες 
    yb = L + b*(1-2*L);
    angs = g.*360;
    xe = xb + L*cosd(angs);
    ye = yb + L*sind(angs);
    Nx = (floor(xb/D) ~= floor(xe/D));
    N = sum(floor(xb/D) ~= floor(xe/D));
    P = N/max(n); %πιθανοτιτα 
    piest(t) = (2*L)/(P*D);%ευρεση του π 
    t = t+1;
        
end

P = N/max(n) % πιθανοτιτα 
PI = max(piest(n)) % Εκτίμηση π

n = 1:i;
figure(1) %Διάγραμμα για τη προσέγγιση του π 
hold on 
plot([0 max(n)],[pi pi],'b')
 plot(n,piest,'bo')
%scatter(n,piest,'h')
xlabel('Αριθμός βελόνων - n'), ylabel('Προσέγγιση του π'), title('Προσέγγιση του π με n ρίψεις')
grid on 

figure(2) %Δημιουργία γραφήματος για το πως έχουν πέσει οι βελόνες 
ax = axes;
hold on
plot(ax,[xe;xb],[ye;yb],'b')
plot(ax,[Nx.*xe ; Nx.*xb],[Nx.*ye ; Nx.*yb],'r')
title('Γράφημα με τις ρίψεις των βελόνων')
 axis square
glines = 0:D:1;
for i = 1:length(glines) % Δημιουργία των παράλληλων λωρίδων 
   xline(ax,glines(i));
end
hold off

