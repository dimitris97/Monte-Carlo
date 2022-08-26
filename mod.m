clear;clc;
Xn = 3;     % Αρχική τιμή
a = 3;
c = 3;
m = 2^31;
n = 10000;  % Επαναλήψεις 
x1 = zeros(n,1); 

for i = 1:n
    x1(i,1) = mod(a*Xn+c,m); 
    Xn = x1(i,1);
end
i = 1:1:n;
y = x1/m;

% -- Διαγράμματα τυχαίων αριθμών --
subplot(2,2,1);
hold on 
plot(i,y,'.')
title('Οι τίμες του χ')
xlabel('Επαναλήψεις n')
ylabel('Τυχαίοι αριθμοί του χ')
hold off

% --Ιστόγραμμα --
subplot(2,2,2);
hold on
hist(y,100)
title('Το ιστόγραμμα του χ')
xlabel('Αριθμοί [0 1]')
ylabel('Συχνότητα επανάληψης')
hold off

% -- Συσχέτιση των αριθμών --
subplot(2,2,[3,4]);
hold on
plot(y(1:end-2),y(2:end-1),'.b');
title('Συσχέτιση μεταξή 2 διαδοχικών αριθμών στη Y')
xlabel('x_{2k}');
ylabel('x_{2k-1}');
