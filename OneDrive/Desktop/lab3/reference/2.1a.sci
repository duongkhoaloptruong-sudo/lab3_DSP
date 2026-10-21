n = -8:8;
x = zeros(n);

x(n >= -3 & n <= -1) = 1 + n(n >= -3 & n <= -1) / 3;
x(n >= 0  & n <= 3)  = 1;

clf();

// Đồ thị 1: Tín hiệu x(n)

subplot(1, 1, 1);
plot2d3(n, x);
plot(n, x, 'ko', 'MarkerFaceColor', 'k');

a1 = gca();
a1.box = "off";
a1.x_location = "origin";
a1.y_location = "origin";
a1.grid = [-1, -1];
a1.data_bounds = [-5, -0.5; 7, 1.5];
a1.grid = [1, 1]; 

title("Signal x(n)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [6.8, 0.2]);
ylabel("x(n)", "fontsize", 2, "position", [0.15, 1.15]);

lbl1 = a1.y_label;
lbl1.auto_rotation = "off";
lbl1.font_angle = 0;
