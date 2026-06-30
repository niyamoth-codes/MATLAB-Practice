clc;
clear;
close all;

product_price = 500;
quantity = 4;
vat_rate = 5;
discount_rate = 10;

subtotal = product_price * quantity;
vat = subtotal * 0.05;


if subtotal >= 5000
    discount = subtotal * 0.10;
else
    discount = subtotal * 0.05;
end

final_bill = subtotal + vat - discount;

fprintf('Product price: %.2f\n', product_price);
fprintf('Quantity: %.2f\n', quantity);
fprintf('Vat Rate: %.2f%%\n', vat_rate);
fprintf('VAT Amount: %.2f\n', vat);
fprintf('Discount Rate: %.2f%%\n', discount_rate);
fprintf('Discount Amount: %.2f\n', discount);
fprintf('Subtotal: %.2f\n', subtotal);
fprintf('Final Bill: %.2f\n',final_bill);

figure
bar([subtotal vat final_bill])
title('Customer bill analysis')
xlabel('Product')
ylabel('Cost')
grid on
