clc;
clear;
close all;

%% Student Information
disp('Student Information');
disp('-------------------');

name = 'Niyamoth';
id = 2253161015;
department = 'Electrical & Electronic Engineering';
semester = 'Summer 2026';

%% Academic Information
disp('Academic Information');
disp('--------------------');

subjects = {'Math','Physics','EEE','Programming','English'};
marks = [87 90 80 82 95];

%% Attendance
disp('Attendance');
disp('----------');

total_classes = 15;
present = 10;

%% Fee
disp('Fee');
disp('---');

tuition_fee = 4000;
lab_fee = 2000;
library_fee = 1000;

scholarship_rate = 90;

%% Calculations

total_marks = sum(marks);
avg_marks = mean(marks);
max_marks = max(marks);
min_marks = min(marks);

attendance = (present / total_classes) * 100;

absent = total_classes - present;

total_fee = tuition_fee + lab_fee + library_fee;
scholarship_amount = total_fee * scholarship_rate / 100;
final_fee = total_fee - scholarship_amount;

%% Grade and GPA

if avg_marks >= 80
    grade = 'A+';
    gpa = 4.00;

elseif avg_marks >= 70
    grade = 'A';
    gpa = 3.50;

elseif avg_marks >= 60
    grade = 'B';
    gpa = 3.00;

else
    grade = 'C';
    gpa = 2.00;
end

%% Eligibility

if attendance >= 75
    eligibility = 'Eligible';
else
    eligibility = 'Not Eligible';
end

%% Performance

if avg_marks >= 85
    performance = 'Excellent';

elseif avg_marks >= 75
    performance = 'Very Good';

elseif avg_marks >= 65
    performance = 'Good';

elseif avg_marks >= 50
    performance = 'Average';

else
    performance = 'Need Improvement';
end

%% Report

fprintf('=====================================\n');
fprintf('      UNIVERSITY STUDENT REPORT\n');
fprintf('=====================================\n');

fprintf('Name: %s\n', name);
fprintf('ID: %d\n', id);
fprintf('Department: %s\n', department);
fprintf('Semester: %s\n', semester);

fprintf('-------------------------------------\n');

fprintf('Total Marks: %.2f\n', total_marks);
fprintf('Average Marks: %.2f\n', avg_marks);
fprintf('Highest Marks: %.2f\n', max_marks);
fprintf('Lowest Marks: %.2f\n', min_marks);

fprintf('Grade: %s\n', grade);
fprintf('GPA: %.2f\n', gpa);

fprintf('-------------------------------------\n');

fprintf('Attendance: %.2f%%\n', attendance);
fprintf('Eligibility: %s\n', eligibility);

fprintf('-------------------------------------\n');

fprintf('Total Fee: %.2f TK\n', total_fee);
fprintf('Scholarship Amount: %.2f TK\n', scholarship_amount);
fprintf('Final Fee: %.2f TK\n', final_fee);

fprintf('-------------------------------------\n');

fprintf('Performance: %s\n', performance);

fprintf('=====================================\n');

%% Bar Chart

figure

b = bar(marks);

b.FaceColor = 'flat';

b.CData = [
    0 0.4470 0.7410
    0.8500 0.3250 0.0980
    0.9290 0.6940 0.1250
    0.4940 0.1840 0.5560
    0.4660 0.6740 0.1880
];

title('Student Marks Analysis');
xlabel('Subjects');
ylabel('Marks');

grid on

set(gca,'XTickLabel',subjects)

for i = 1:length(marks)

    text(i, marks(i)+1, num2str(marks(i)), ...
        'HorizontalAlignment','center')

end

%% Pie Chart

figure

pie([present absent],{'Present','Absent'})

title('Student Attendance Percentage')
%% Report

file = fopen('Student_Report.txt','w');
fprintf(file,'=====================================\n');
fprintf(file,'      UNIVERSITY STUDENT REPORT\n');
fprintf(file,'=====================================\n');

fprintf(file,'Name: %s\n', name);
fprintf(file,'ID: %d\n', id);
fprintf(file,'Department: %s\n', department);
fprintf(file,'Semester: %s\n', semester);

fprintf(file,'-------------------------------------\n');

fprintf(file,'Total Marks: %.2f\n', total_marks);
fprintf(file,'Average Marks: %.2f\n', avg_marks);
fprintf(file,'Highest Marks: %.2f\n', max_marks);
fprintf(file,'Lowest Marks: %.2f\n', min_marks);

fprintf(file,'Grade: %s\n', grade);
fprintf(file,'GPA: %.2f\n', gpa);

fprintf(file,'-------------------------------------\n');

fprintf(file,'Attendance: %.2f%%\n', attendance);
fprintf(file,'Eligibility: %s\n', eligibility);

fprintf(file,'-------------------------------------\n');

fprintf(file,'Total Fee: %.2f TK\n', total_fee);
fprintf(file,'Scholarship Amount: %.2f TK\n', scholarship_amount);
fprintf(file,'Final Fee: %.2f TK\n', final_fee);

fprintf(file,'-------------------------------------\n');

fprintf(file,'Performance: %s\n', performance);

fprintf(file,'=====================================\n');

fclose(file);
