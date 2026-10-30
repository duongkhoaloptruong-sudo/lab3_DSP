clear;
clf();

n = -1:1;
x = [1, 3, -2];

x_fold = x($:-1:1);
xe = 0.5 * (x + x_fold);
xo = 0.5 * (x - x_fold);

subplot(3, 1, 1);
plot2d3(n, x, 2);
plot(n, x, 'r.', 'MarkerSize', 3);
xgrid(1);
title("Signal x(n)", "fontsize", 3);
xlabel("n");
ylabel("x(n)");

subplot(3, 1, 2);
plot2d3(n, xe, 3);
plot(n, xe, 'g.', 'MarkerSize', 3);
xgrid(1);
title("Even component x_e(n)", "fontsize", 3);
xlabel("n");
ylabel("x_e(n)");

subplot(3, 1, 3);
plot2d3(n, xo, 4);
plot(n, xo, 'b.', 'MarkerSize', 3);
xgrid(1);
title("Odd component x_o(n)", "fontsize", 3);
xlabel("n");
ylabel("x_o(n)");
