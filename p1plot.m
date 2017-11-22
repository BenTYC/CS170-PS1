
x1 = -2:1:2;
x2 = (5-2*log(3)-2*x1) / 4;

plot(x1,x2); axis square 
axis([-inf, inf, -2, 2]);
grid on;

%{
x1 = -2:1:2;
x2 = (13-6*x1) / 4;

plot(x1,x2); axis square 
axis([-inf, inf, -2, 2]);
grid on;
%}

