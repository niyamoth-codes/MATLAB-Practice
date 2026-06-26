clc;
clear;
close all;

attendance = [1 1 0 1 1 0 1 1 1 0];
total_classes = length(attendance);

present = sum(attendance);
absent = total_classes - present;

%Attendance Percentange

percentange = (present/total_classes)*100;

%Result
fprintf('Total classes: %d\n',total_classes);
fprintf('Present: %d\n', present);
fprintf('Absent: %d\n', absent);
fprintf('Attendance: %.2f%%\n', percentange);

if percentange >= 75
    disp('Eligible for Exam');

else
    disp('Not Eligible for Exam')
end

subplot(1,2,1)
pie([present absent],{'present','absent'})
title('Attendance Distribution')
grid on

subplot(1,2,2)
bar([present absent])
title('present vs absent')
xlabel('status')
ylabel('present')
grid on

