clc;
clear;
close all;

%Covid_19 Daily Cases Data
days = 1:14;

cases = [120 150 180 220 190 250 300 280 320 350 330 400 420 450];

%Basic statistic
max_cases = max(cases);
min_cases = min(cases);
avg_cases = mean(cases);
std_cases = std(cases);

%Display Result
disp('COVID-19 DATA ANALYSIS')
disp('----------------------')

fprintf('Highest Cases: %d\n',max_cases);
fprintf('Lowest cases: %d\n',min_cases);
fprintf('Average Cases: %.2f\n',avg_cases);
fprintf('Standard Deviation: %.2f\n',std_cases);

%Line plot
figure
subplot(2,2,1)
plot(days,cases,'-o')
grid on
title('COVID-19 Daily Cases')
xlabel('day')
ylabel('cases')

%Histogram
subplot(2,2,2)
histogram(cases)
grid on
title('Distribution of Cases')
xlabel('cases')
ylabel('frequency')

%Bar Chart
subplot(2,2,2)
bar(cases)
grid on
title('Bar chart of cases')
xlabel('day')
ylabel('cases')

%Pie Chart
subplot(2,2,4)
pie(cases)
title('cases Distribution')

%Growth Calculation
growth = cases(end) - cases(1);
fprintf('Total Groth:%d Cases\n',growth);
