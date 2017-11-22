function problem3

X1 = [0;2;2;3;-1;1];
Y = [1;-3;-2;-3;-1;-1];

X0 = ones(6,1);
X = [X0 X1 X1.^2 X1.^3];

%disp(X);
%disp(Y);

A = X' * X;
c = X' * Y;
w = inv(A) * c;

disp(w)

x = -1:0.01:4;
y1 = w(1,1) + w(2,1)*x + w(3,1)*x.^2 + w(4,1)*x.^3;

plot(x,y1,X1,Y,'d'); axis square
grid on;
legend('f(x)','points');

%plot(x,y);

%%%%%%

I = [0 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1];
w2 = inv(A + 5 * I) * c;
%w2 = inv(A + 5 * eye(size(A,1))) * c;

disp(w2)

y2 = w2(1,1) + w2(2,1)*x + w2(3,1)*x.^2 + w2(4,1)*x.^3;
plot(x,y2,X1,Y,'d'); axis square
grid on;
legend('lambda = 5','points');

plot(x,y1,x,y2,X1,Y,'d'); axis square
grid on;
legend('f(x)','lambda = 5','points');



