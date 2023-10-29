function [] = graphic_lagrange(x_interp, y_interp, x, y, x1, y1, x2, y2)
plot(x_interp, y_interp, '-')
hold on
plot(x, y, 'o', 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'g')
plot(x1, y1, 'ro', x2, y2, 'ro', 'MarkerFaceColor', 'r')
xlabel('x')
ylabel('y')
legend('Интерполяция','Исходные данные', 'Точки x1 и x2','Location', 'northwest')
title('Интерполяция методом Лагранжа')
hold off
end