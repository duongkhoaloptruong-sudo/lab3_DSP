function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    yn = convol(xn, hn);
    
    yorigin = xorigin + horigin - 1;
    
    nx = (1:length(xn)) - xorigin;
    nh = (1:length(hn)) - horigin;
    ny = (1:length(yn)) - yorigin;
    
    min_x = min([nx, nh, ny]) - 1;
    max_x = max([nx, nh, ny]) + 1;
    min_y = min([xn, hn, yn]) - 1;
    max_y = max([xn, hn, yn]) + 1;
    
    scf();
    
    subplot(3, 1, 1);
    plot2d3(nx, xn);
    plot(nx, xn, 'ro');
    xgrid();
    title('Input signal x(n)');
    xlabel('Time index n');
    ylabel('Amplitude');
    a1 = gca();
    a1.data_bounds = [min_x, min_y; max_x, max_y];
    
    subplot(3, 1, 2);
    plot2d3(nh, hn);
    plot(nh, hn, 'go');
    xgrid();
    title('Impulse response h(n)');
    xlabel('Time index n');
    ylabel('Amplitude');
    a2 = gca();
    a2.data_bounds = [min_x, min_y; max_x, max_y];
    
    subplot(3, 1, 3);
    plot2d3(ny, yn);
    plot(ny, yn, 'bo');
    xgrid();
    title('Output signal y(n) = x(n) * h(n)');
    xlabel('Time index n');
    ylabel('Amplitude');
    a3 = gca();
    a3.data_bounds = [min_x, min_y; max_x, max_y];
endfunction
