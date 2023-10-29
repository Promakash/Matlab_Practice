function [f,a,b,h] = IntegralInputandCheck(n)
while 1
    flag = true;
    %Вызов функции для ввода и проверки подынтегральной функции
    f = funcInput();
    %Вызов функции для ввода и проверки границ интегрирования
    [a,b] = abInput();
    %Высчитывается шаг интегрирования
    h = (b-a)/n;
    xn = a;
    for i = 1:n+1
        %Проверка на разрыв
        if f(xn) == Inf || isnan(f(xn))
            disp('Введен график с разрывом!!! Повторите ввод!');
            flag = false;
            break;
        end
        xn = xn + h;
    end
    %Выход из цикла, если ошибок не обнаружено
    if flag == true
        break;
    end
end
end