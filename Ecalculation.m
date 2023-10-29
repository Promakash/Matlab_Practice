function [E] = Ecalculation(f,a,h,n,I)
h = h / 2;
n = n * 2;
x = zeros(1,n+1);
y = zeros(1,n+1);
[I1] = Trapezoidmethod(x,y,f,a,h,n);
E = abs(I1-I)/3;
end