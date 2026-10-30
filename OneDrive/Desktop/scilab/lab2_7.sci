clear;
clf();

n = -1:3;
x1 = [0, 0, 1, 3, -2];
x2 = [0, 1, 2, 3, 0];
y = x1 .* x2;

subplot(3, 1, 1);
plot2d3(n, x1, 2);
plot(n, x1, 'r.', 'MarkerSize', 3);
xgrid(1);
title("Signal x_1(n)", "fontsize", 3);
xlabel("n");
ylabel("x_1(n)");

subplot(3, 1, 2);
plot2d3(n, x2, 3);
plot(n, x2, 'g.', 'MarkerSize', 3);
xgrid(1);
title("Signal x_2(n)", "fontsize", 3);
xlabel("n");
ylabel("x_2(n)");

subplot(3, 1, 3);
plot2d3(n, y, 4);
plot(n, y, 'b.', 'MarkerSize', 3);
xgrid(1);
title("Signal y(n) = x_1(n) . x_2(n)", "fontsize", 3);
xlabel("n");
ylabel("y(n)");
