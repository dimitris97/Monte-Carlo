clear all; clc;
% -- Marsenne Twister --
n = 10000;  % Επαναλήψεις
y = rand(1,n);
% -- Ισόγραμμα --
subplot(2,2,[1,2])
hold on
hist(y,100);
title('n Τυχαίοι Αριθμοί')
xlabel('Αριθμοί [0 1]')
ylabel('Συχνότιτα Επανάληψης')
hold off
% --Συσχέτιση --
subplot(2,2,[3,4])
hold on
plot(y(1:end-2),y(2:end-1),'.b');
title('Συσχέτιση δύο διαδωχικών αριθμών στη Y')
xlabel('x_{2k}')
ylabel('x_{2k-1}')
hold off
