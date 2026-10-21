n = -1:4;
x=[1,1,1,1,1/2,1/2];

y1 = [1, 1, 1, 1];
ny1 = -1:2;
clf();

// Đồ thị 1: Tín hiệu x(n)

subplot(2, 1, 1);
plot2d3(n, x);
plot(n, x, 'ko', 'MarkerFaceColor', 'k');

a1 = gca();
a1.box = "off";
a1.x_location = "origin";
a1.y_location = "origin";
a1.grid = [-1, -1];
a1.data_bounds = [-4.5, -0.5; 4.5, 1.5];
a1.grid = [1, 1];

title("Signal x(n)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [4.8, 0.2]);
ylabel("x(n)", "fontsize", 2, "position", [0.15, 1.15]);

lbl1 = a1.y_label;
lbl1.auto_rotation = "off";
lbl1.font_angle = 0;

// Đồ thị 2: Tín hiệu lật y1(n) = x(-n)

subplot(2, 1, 2);
plot2d3(ny1, y1); 
plot(ny1, y1, 'ko', 'MarkerFaceColor', 'k');

a2 = gca();
a2.box = "off";
a2.x_location = "origin";
a2.y_location = "origin";
a2.grid = [-1, -1];
a2.data_bounds = [-4.5, -0.5; 4.5, 1.5];
a2.grid = [1, 1]; 

title("Signal yd(n)=x(n)u(2-n)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [4.8, 0.2]);
ylabel("yd(n)", "fontsize", 2, "position", [0.15, 1.15]);

lbl2 = a2.y_label;
lbl2.auto_rotation = "off";
lbl2.font_angle = 0;
