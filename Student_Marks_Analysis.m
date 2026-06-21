clc;
clear;
close all;

marks = [85 72 90 65 78 88 95 70 82 76];

max_marks = max(marks);
min_marks = min(marks);
avg_marks = mean(marks);
std_marks = std(marks);

disp('STUDENT MARKS ANALYSIS')
disp('----------------------')

fprintf('Highest marks: %d\n', max_marks);
fprintf('Lowest marks: %d\n', min_marks);
fprintf('Average marks: %.2f\n', avg_marks);
fprintf('Standard marks:%.2f\n', std_marks);

figure

subplot(1,2,1)
bar(marks)
grid on
title('Student marks')
xlabel('Student')
ylabel('Marks')

subplot(1,2,2)
pie(marks)
title('Marks Disribution')

