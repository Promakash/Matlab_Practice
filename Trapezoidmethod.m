function [I,x,y] = Trapezoidmethod(x,y,f,a,h,n)
xn = a;
firstlast = 0;
sumofx = 0;
for i = 1:n+1
    x(i) = xn;
    y(i) = f(xn);
    if i == 1 || i == n+1
        firstlast = firstlast + y(i);
    else
        sumofx = sumofx + y(i);
    end
    xn = xn + h;
end
I = h*(firstlast/2+sumofx);
end