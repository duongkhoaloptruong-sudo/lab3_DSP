clear;
clf();

F_a = 50;
T_a = 1 / F_a;
t_max = 5 * T_a;
dt = T_a / 1000;
t = 0:dt:t_max;
xa = 3 * sin(100 * %pi * t);

Fs = 300;
N = 6;
n = 0 : (5 * N - 1);
x = 3 * sin(%pi * n / 3);

delta = 0.1;
xq = delta * floor(x / delta);

subplot(3, 1, 1);
plot(t, xa, 'b-', 'LineWidth', 2);
xgrid(1);
title("1. Tin hieu Analog x_a(t) = 3*sin(100*%pi*t)", "fontsize", 3);
xlabel("t (s)");
ylabel("x_a(t)");

subplot(3, 1, 2);
plot2d3(n, x, 2);
plot(n, x, 'r.', 'MarkerSize', 3);
xgrid(1);
title("2. Tin hieu roi rac x(n) = 3*sin(\pi*n / 3) (N = 6 samples)", "fontsize", 3);
xlabel("n (samples)");
ylabel("x(n)");

subplot(3, 1, 3);
plot2d3(n, xq, 3);
plot(n, xq, 'g.', 'MarkerSize', 3);
xgrid(1);
title("3. Tin hieu luong tu x_q(n) (Truncated, \Delta = 0.1)", "fontsize", 3);
xlabel("n (samples)");
ylabel("x_q(n)");
