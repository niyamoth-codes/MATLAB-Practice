clc;
clear;
close all;

unit = 350;

if  unit <= 100
    rate = 5;

elseif unit <= 300
    rate = 7;

else
    rate = 10;
end

bill = unit * rate;
fprintf('Unit: %.2f\n', unit);
fprintf('Rate: %.2f TK/Unit\n', rate);
fprintf('Electricity Bill: %.2f TK\n', bill);

figure
bar([unit bill])
title('Electricity bill by bar chart')
xlabel('unit')
ylabel('bill')
grid on
