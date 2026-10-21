n = -8:8;
x = zeros(n);

x(n >= -3 & n <= -1) = 1 + n(n >= -3 & n <= -1) / 3;
x(n >= 0  & n <= 3)  = 1;

y1 = x;
ny1 = n + 4;

y2 = x;
ny2 = -ny1;
clf();

// Đồ thị 1: Tín hiệu x(n)

subplot(3, 1, 1);
plot2d3(n, x);
plot(n, x, 'ko', 'MarkerFaceColor', 'k');

a1 = gca();
a1.box = "off";
a1.x_location = "origin";
a1.y_location = "origin";
a1.grid = [-1, -1];
a1.data_bounds = [-7, -0.5; 7, 1.5];
a1.grid = [1, 1]; 

title("Signal x(n)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [7.8, 0.2]);
ylabel("x(n)", "fontsize", 2, "position", [0.15, 1.15]);

lbl1 = a1.y_label;
lbl1.auto_rotation = "off";
lbl1.font_angle = 0;

// Đồ thị 2: Tín hiệu lật y1(n) = x(-n)

subplot(3, 1, 2);
plot2d3(ny1, y1); 
plot(ny1, y1, 'ko', 'MarkerFaceColor', 'k');

a2 = gca();
a2.box = "off";
a2.x_location = "origin";
a2.y_location = "origin";
a2.grid = [-1, -1];
a2.data_bounds = [-7, -0.5; 7, 1.5];
a2.grid = [1, 1]; 

title("Signal y1(n)=x(-n+4)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [7.8, 0.2]);
ylabel("y1(n)", "fontsize", 2, "position", [0.15, 1.15]);

lbl2 = a2.y_label;
lbl2.auto_rotation = "off";
lbl2.font_angle = 0;

subplot(3, 1, 3);
plot2d3(ny2, y2); 
plot(ny2, y2, 'ko', 'MarkerFaceColor', 'k');

a3 = gca();
a3.box = "off";
a3.x_location = "origin";
a3.y_location = "origin";
a3.grid = [-1, -1];
a3.data_bounds = [-7, -0.5; 7, 1.5];
a3.grid = [1, 1]; 

title("Signal y2(n)=x(-n-4)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [7.8, 0.2]);
ylabel("y1(n)", "fontsize", 2, "position", [0.15, 1.15]);

lbl3 = a3.y_label;
lbl3.auto_rotation = "off";
lbl3.font_angle = 0;
