function [] = IntGraph(a,b,xgraph,ygraph,x,y)
plot(xgraph, ygraph, '-','LineWidth', 2);
hold on
plot(x, y, 'ro-','LineWidth', 1); 
fill([a, x, b], [0, y, 0], 'r', 'FaceAlpha', 0.5);
xlabel('x');
ylabel('y');
legend('Функция','Граница вычисленной площади','Площадь');
title('Интегрирование методом трапеций');
hold off;
end