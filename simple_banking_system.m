clc;
clear;
close all;

balance = 10000;
deposit = 5000;
withdraw = 3000;

new_balance = balance + deposit;

if new_balance < withdraw
disp('Insufficient Balance')
else
final_balance = new_balance - withdraw;
disp('Transsaction succcessful')
end

fprintf('Initial Balance: %.2f\n', balance);
fprintf('After Deposit: %.2f\n', new_balance);
fprintf('Now Withdraw: %.2f\n', withdraw);
fprintf('Final Balance: %.2f\n', final_balance);

figure
title('Bank Balance Analysis')
bar([balance new_balance final_balance])
xlabel('Transaction stage')
ylabel('Amount')
grid on
