function [] = graphic(xn1,f,a,b,x,y)
plot(x, y); 
line([a,a],[-100000,100000],'LineStyle', '--', 'Color', 'black');
line([b,b],[-100000,100000],'LineStyle', '--', 'Color', 'black');
line([0, 0], [-100000,100000], 'LineStyle', '-', 'Color', 'black');
line([-100000,100000], [0, 0], 'LineStyle', '-', 'Color', 'black');
grid on;
hold on; 
plot(xn1, f(xn1), 'ro', 'MarkerSize', 5, 'MarkerFaceColor', 'r');
axis([-6 6 -6 6]);
xlabel('x');
ylabel('y');
end