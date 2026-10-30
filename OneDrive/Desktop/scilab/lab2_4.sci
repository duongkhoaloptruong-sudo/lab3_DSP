clear;
clf();

n = -5:5;
ur = n .* (n >= 0);

plot2d3(n, ur, 2);
plot(n, ur, 'r.', 'MarkerSize', 3);
xgrid(1);
title("Unit Ramp Signal u_r(n)", "fontsize", 3);
xlabel("n");
ylabel("u_r(n)");
