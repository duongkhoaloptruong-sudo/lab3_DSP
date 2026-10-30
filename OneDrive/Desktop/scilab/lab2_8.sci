clear;
clf();

n_x = -2:1;
x = [1, -2, 3, 6];

n_y1 = -1:2;
y1 = x($:-1:1);

figure(1);
clf();
subplot(2, 1, 1);
plot2d3(n_x, x, 2);
plot(n_x, x, 'r.', 'MarkerSize', 3);
xgrid(1);
title("Original signal x(n)", "fontsize", 3);
xlabel("n");
ylabel("x(n)");

subplot(2, 1, 2);
plot2d3(n_y1, y1, 4);
plot(n_y1, y1, 'b.', 'MarkerSize', 3);
xgrid(1);
title("y_1(n) = x(-n)", "fontsize", 3);
xlabel("n");
ylabel("y_1(n)");


n_y2 = n_x - 3;
y2 = x;

figure(2);
clf();
subplot(2, 1, 1);
plot2d3(n_x, x, 2);
plot(n_x, x, 'r.', 'MarkerSize', 3);
xgrid(1);
title("Original signal x(n)", "fontsize", 3);
xlabel("n");
ylabel("x(n)");

subplot(2, 1, 2);
plot2d3(n_y2, y2, 4);
plot(n_y2, y2, 'b.', 'MarkerSize', 3);
xgrid(1);
title("y_2(n) = x(n + 3)", "fontsize", 3);
xlabel("n");
ylabel("y_2(n)");


n_y3 = -3:0;
y3 = 2 * x($:-1:1);

figure(3);
clf();
subplot(2, 1, 1);
plot2d3(n_x, x, 2);
plot(n_x, x, 'r.', 'MarkerSize', 3);
xgrid(1);
title("Original signal x(n)", "fontsize", 3);
xlabel("n");
ylabel("x(n)");

subplot(2, 1, 2);
plot2d3(n_y3, y3, 4);
plot(n_y3, y3, 'b.', 'MarkerSize', 3);
xgrid(1);
title("y_3(n) = 2*x(-n - 2)", "fontsize", 3);
xlabel("n");
ylabel("y_3(n)");
