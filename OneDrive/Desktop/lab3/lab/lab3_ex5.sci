function [yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    
    n_min = min(min(n1), min(n2));
    n_max = max(max(n1), max(n2));
    n = n_min:n_max;
    
    y1 = zeros(1, length(n));
    y2 = zeros(1, length(n));
    
    y1(n1 - n_min + 1) = x1n;
    y2(n2 - n_min + 1) = x2n;
    
   
    yn = y1 .* y2;
    
    yorigin = 1 - n_min;
    
    min_x = n_min - 1;
    max_x = n_max + 1;
    min_y = min([x1n, x2n, yn]) - 1;
    max_y = max([x1n, x2n, yn]) + 1;
    
    scf();
    
    subplot(3, 1, 1);
    plot2d3(n1, x1n);
    plot(n1, x1n, 'ro');
    xgrid();
    title('Signal x1(n)');
    xlabel('Time index n');
    ylabel('Amplitude');
    a1 = gca();
    a1.data_bounds = [min_x, min_y; max_x, max_y];
    
    subplot(3, 1, 2);
    plot2d3(n2, x2n);
    plot(n2, x2n, 'go');
    xgrid();
    title('Signal x2(n)');
    xlabel('Time index n');
    ylabel('Amplitude');
    a2 = gca();
    a2.data_bounds = [min_x, min_y; max_x, max_y];
    
    subplot(3, 1, 3);
    plot2d3(n, yn);
    plot(n, yn, 'bo');
    xgrid();
    title('Multiplied signal y(n) = x1(n) . x2(n)');
    xlabel('Time index n');
    ylabel('Amplitude');
    a3 = gca();
    a3.data_bounds = [min_x, min_y; max_x, max_y];
endfunction
