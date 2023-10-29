% Определение функции интерполяции Лагранжа
function y_interp = lagrange(x, y, x_interp)
    n = length(x);
    y_interp = zeros(size(x_interp));
    for k = 1:length(x_interp)
        for i = 1:n
            L = 1;
            for j = 1:n
                if j ~= i
                    if x(i) - x(j) ~= 0
                        L = L .* (x_interp(k) - x(j)) ./ (x(i) - x(j));
                    else
                        L = 0;
                        break
                    end
                end
            end
            y_interp(k) = y_interp(k) + y(i) .* L;
        end
    end
end