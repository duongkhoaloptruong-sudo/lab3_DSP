n = -4:4;

x = [0, 0, 0, 1, 1, 1, 1, 1/2, 1/2];

x_folded = flipdim(x, 2);

x_e = 0.5 * (x - x_folded);

clf();

subplot(2, 1, 1);
plot2d3(n, x);
plot(n, x, 'ko', 'MarkerFaceColor', 'k');

a1 = gca();
a1.box = "off";
a1.x_location = "origin";
a1.y_location = "origin";
a1.grid = [-1, -1];
a1.data_bounds = [-5, -0.5; 5, 2];
a1.grid = [1, 1]; 

title("Original Signal x(n)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [5.8, 0.2]);
ylabel("x(n)", "fontsize", 2, "position", [0.1, 1.5]);

lbl1 = a1.y_label;
lbl1.auto_rotation = "off";
lbl1.font_angle = 0;

//Tín hiệu chẵn x_e(n)

subplot(2, 1, 2);
plot2d3(n, x_e);
plot(n, x_e, 'ko', 'MarkerFaceColor', 'k');

a2 = gca();
a2.box = "off";
a2.x_location = "origin";
a2.y_location = "origin";
a2.grid = [-1, -1];
a2.data_bounds = [-5, -0.5; 5, 2];
a2.grid = [1, 1]; 

title("Even Component x_e(n)", "fontsize", 3);
xlabel("n", "fontsize", 2, "position", [5.8, 0.2]);
ylabel("x_e(n)", "fontsize", 2, "position", [0.1, 1.5]);

lbl2 = a2.y_label;
lbl2.auto_rotation = "off";
lbl2.font_angle = 0;
