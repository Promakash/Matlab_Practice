function [] = default_lagrange()
%Изначальные значения x y
x = [1.2, 1.5, 1.7, 2.0, 2.4, 2.6, 3.1, 3.3, 3.5, 3.9];
y = [7.281, 7.550, 7.925, 8.195, 8.360, 8.734, 8.909, 9.176, 9.547, 9.710];
%Точки для вычисления
xi = [1.25, 3.55];
%Вычисление уравнения функции
p = polyfit(x, y, length(x)-1);
%Вычисление значений функции в заданных точках
yi = polyval(p, xi);
%Инициализация точек для построения графика
x_interp = linspace(min(x), max(x), 1000);
%Вычисление значения функции в заданных точках
y_interp = polyval(p, x_interp);
%Преобразование уравнения функции в строку
polynomial_str = poly2str(p, 'x');
disp(['Уравнение полинома: y = ' polynomial_str]);
fprintf('Значение функции в точке x1 = %f: y1 = %.4f\n', xi(1), yi(1));
fprintf('Значение функции в точке x2 = %f: y2 = %.4f\n', xi(2), yi(2));
%Построение графика
graphic_lagrange(x_interp, y_interp, x, y, xi(1), yi(1), xi(2), yi(2));
end