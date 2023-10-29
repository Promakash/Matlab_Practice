function [] = writeequation(x,y,n)
equation = '';
    for i = 1:n
        counter = 0;
        numerator = '(';
        denumerator = 1;
        for j = 1:n
            if j ~= i
                numerator = strcat(numerator,'(x-',num2str(x(j)),')');
                if counter ~= n-2
                    numerator = strcat(numerator,'*');
                    counter = counter + 1;
                end
                denumerator = denumerator * (x(i)-x(j));
            end
        end
        if denumerator == 0 || y(i) == 0
            continue
        end
        if denumerator < 0
            denumeratorstr = strcat('(',num2str(denumerator),')');
        else
            denumeratorstr = num2str(denumerator);
        end
        if isempty(equation) && i == 1 
            equation = strcat(num2str(y(i)),'*',numerator,'/',denumeratorstr,')');
        elseif y(i) < 0
            equation = strcat(equation,num2str(y(i)),'*',numerator,'/',denumeratorstr,')');
        else
            equation = strcat(equation,'+',num2str(y(i)),'*',numerator,'/',denumeratorstr,')');
        end
    end
    disp(['Уравнение полинома: y = ',equation]);
end