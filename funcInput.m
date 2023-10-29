function [userFInput] = funcInput()
flag = false;
while flag == false
    userFunInput = input("Введите f(x): ","s");
    %Проверка есть ли x в выражении
    if ~ismember('x',userFunInput)
        fprintf("Ошибка ввода. Функция введена некорректно, попробуйте снова.\n");
        continue;
    end
    %Замена матричных математических операций на поэлементные
    userFunInput = strrep(userFunInput,'*','.*');
    userFunInput = strrep(userFunInput,'/','./');
    userFunInput = strrep(userFunInput,'^','.^');
    %Попытка вычислить выражение. В случае неудачи повторный ввод
    try
        f = eval(['@(x) ', userFunInput]);
        f(0);
        flag = true;
        userFInput = f;
    catch
        clc;
        fprintf("Ошибка ввода. Уравнение введено некорректно, попробуйте снова.\n");
        flag = false;
    end
end