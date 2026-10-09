function [yn, yorigin] = advance(xn, xorigin, k)
    yn = xn;
    
    yorigin = xorigin + k;
    
    N = length(xn);
    nx = (1:N) - xorigin; 
    ny = (1:N) - yorigin; 
    
    min_x = min([nx, ny]) - 1;
    max_x = max([nx, ny]) + 1;
    min_y = min(xn) - 1;
    max_y = max(xn) + 1;
    
    scf(); 
    
    subplot(2, 1, 1);
    plot2d3(nx, xn);       
    plot(nx, xn, 'ro');     
    xgrid();
    title('Original signal x(n)');
    xlabel('Time index n');
    ylabel('Amplitude');
    a1 = gca();
    a1.data_bounds = [min_x, min_y; max_x, max_y];
    
    subplot(2, 1, 2);
    plot2d3(ny, yn);        
    plot(ny, yn, 'bo');     
    xgrid();
    title('Advanced signal y(n) = x(n + ' + string(k) + ')');
    xlabel('Time index n');
    ylabel('Amplitude');
    a2 = gca();
    a2.data_bounds = [min_x, min_y; max_x, max_y];
endfunction
