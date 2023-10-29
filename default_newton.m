function [] = default_newton()
%Уравнение функции из ручных расчетов
f = @(x) 3.*exp(-7.*x).*sin(2.*x+0.1)-1;
%Интервал [a; b]
a = -1.7;
b = -1.6;
%Вычисление начального приближенного корня
if (f(a) < 0) && (f(b) > 0)
    xn = b;
else
    xn = a;
end
% Вычисление решения с помощью функции fsolve
options = optimset('Display','iter');
xn1 = fsolve(f, xn, options);
% Вывод результата
fprintf('Корень уравнения: %f\n', xn1);
%Вычисление точек для построения графика
x = linspace(a-20,b+20,1000);
y = f(x);
%Вызов функции для построения графика
graphic(xn1,f,a,b,x,y);
end