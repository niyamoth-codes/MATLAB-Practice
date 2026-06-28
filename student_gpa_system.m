clc;
clear;
close all;

gpa = [3.75 3.50 3.25 4.00 3.75];

max_gpa = max(gpa);
min_gpa = min(gpa);
avg_gpa = mean(gpa);

disp('Student GPA Calculator');
disp('----------------------');

fprintf('Highest gpa: %.2f\n', max_gpa);
fprintf('Lowest gpa: %.2f\n', min_gpa);
fprintf('Average gpa: %.2f\n', avg_gpa);

if avg_gpa >= 3.75
    grade = 'A';

elseif avg_gpa >= 3.50
    grade = 'B';

else

    grade = 'c';

end

fprintf('Grade: %c\n', grade);

subplot(1,2,1)
title('pie chart by gpa')
pie(gpa)
grid on

subplot(1,2,2)
title ('bar graph')
bar(gpa)
grid on
