clc;
clear;
close all;

sales = [12000 15000 18000 14000 22000 25000 21000 27000 27000 30000 26000 35000];

max_sales = max(sales);
min_sales = min(sales);
avg_sales = mean(sales);
sum_sales = sum(sales);

disp('Sales Data Analysis')
disp('-------------------')

fprintf('Highest sales: %d\n', max_sales);
fprintf('Lowest sales: %d\n', min_sales);
fprintf('Average sales: %.2f\n', avg_sales);
fprintf('Total sales: %d\n', sum_sales);

month = 1:12;

subplot(2,1,1)
plot(month,sales,'-o')
title('Sales by line Graph')
xlabel('Month')
ylabel('Sales')
grid on

subplot(2,1,2)
bar(sales)
title('Sales by bar Graph')
xlabel('Month')
ylabel('Sales')
grid on
