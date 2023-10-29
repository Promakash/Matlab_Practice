function [] = simpleDialogFinal()
    clear; clc;
    while 1
        disp('Главное меню:');
        disp('Выберите пункт меню:');
        disp('Задание 1. Решение нелинейных уравнений');
        disp('Задание 2. Интерполяция');
        disp('Задание 3. Интегрирование');
        disp('4. Информация о программе и авторе');
        disp('5. Выход');
        user_menu = isgood('Выберите пункт меню: ');
        pause(0.2);
        switch user_menu
            case 1
                while 1
                    disp('Решение нелинейных уравнений:');
                    disp('Выберите пункт меню:');
                    disp('1. Демонстрация работы программы');
                    disp('2. Решение функции пользователя');
                    disp('3. Выход');
                    user_menu_nelin = isgood('Выберите пункт меню: ');
                    pause(0.2);
                    switch user_menu_nelin
                        case 1
                            default_newton;
                        case 2
                            method;
                        case 3
                            break;
                        otherwise
                            disp('Ошибка!!!');
                            disp('Повторите ввод!!!');
                    end
                end
            case 2
                while 1
                    disp('Интерполирование:');
                    disp('Выберите пункт меню:');
                    disp('1. Демонстрация работы программы');
                    disp('2. Решение функции пользователя');
                    disp('3. Выход'); 
                    user_menu_interpol = isgood('Выберите пункт меню: ');
                    pause(0.2);
                    switch user_menu_interpol
                        case 1
                            default_lagrange;
                        case 2
                            user_lagrange;
                        case 3
                            break;
                        otherwise
                            disp('Ошибка!!!');
                            disp('Повторите ввод!!!');
                    end
                end
            case 3
                while 1
                    disp('Интерполирование:');
                    disp('Выберите пункт меню:');
                    disp('1. Демонстрация работы программы');
                    disp('2. Решение функции пользователя');
                    disp('3. Выход'); 
                    user_menu_integral = isgood('Выберите пункт меню: ');
                    pause(0.2);
                    switch user_menu_integral
                        case 1
                            default_trap;
                        case 2
                            user_trap;
                        case 3
                            break;
                        otherwise
                            disp('Ошибка!!!');
                            disp('Повторите ввод!!!');
                    end
                end
            case 4
                inform;
            case 5
                break;
            otherwise
                disp('Ошибка!!!');
                disp('Повторите ввод!!!');
        end
    end
    clc;clear;close;
    disp('Работа программы завершена');
end