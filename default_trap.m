function [] = default_trap()
%Подынтегральная функция
fun = @(x) 1./(sqrt(0.188.*x.^2+1.5));
%Границы интегрирования
a = 0.4;
b = 1.4;
%Создание и заполнение массивов x,y для построения графика
x = linspace(a, b, 5);
y = fun(x);
%Вычисление значения интеграла
integral = trapz(x, y);
%Вывод результата и графика
disp(['Значение интеграла равно: ',num2str(integral)]);
plot(x, y, '-','LineWidth', 2);
hold on
plot(x, y, 'ro-','LineWidth', 1); 
fill([a, x, b], [0, y, 0], 'r', 'FaceAlpha', 0.5);
xlabel('x');
ylabel('y');
legend('Функция','Граница вычисленной площади','Площадь');
title('Интегрирование методом трапеций');
hold off;
end