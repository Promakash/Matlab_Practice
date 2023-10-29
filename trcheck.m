function [a,b,x,y] = trcheck(f,a,b)
%Вычисление значений функции на границе заданного интервала
if isnan(f(a)) || isnan(f(b))
    disp('Невозможно высчитать значения a,b - находятся в ОДЗ');
    [a,b] = IntervalInput(f);
end
%Создание массивов x,y для построения графика и последующего заполнения 
x = linspace(a-20,b+20,1000); 
y = zeros(1,1000);
for i = 1:length(x)
    %Проверка ОДЗ в каждой из точек
    if f(x(i)) == Inf || ~isreal(f(x(i)))
        x(i) = NaN;
        y(i) = NaN;
    else
        y(i) = f(x(i));
    end
end
end