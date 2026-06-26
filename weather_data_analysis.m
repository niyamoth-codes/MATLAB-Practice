clc;
clear;
close all;

temperature = [30 31 32 34 35 36 37 38 39 40 30 29];

max_temperature = max(temperature);
min_temperature = min(temperature);
avg_temperature = mean(temperature);
std_temperature = std(temperature);

disp('Weather Data Analysis')
disp('---------------------')

fprintf('Highest tyemperature: %d\n', max_temperature);
fprintf('Lowest temperature: %d\n', min_temperature);
fprintf('Average temperature: %d.2f\n', avg_temperature);
fprintf('Standard temperature: %d.2f\n', std_temperature);

month = 1:12;
subplot(2,1,1)
plot(month,temperature,'-o')
xlabel('Month')
ylabel('Tempefrature')
title('Temperature by Line Graph')
grid on

subplot(2,1,2)
bar(temperature)
xlabel('Month')
ylabel('Temperature')
title('Temperature by Bar chart')
grid on
