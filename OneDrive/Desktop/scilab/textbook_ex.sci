// Cấu hình thông số ban đầu
N = 200;
f0 = 1/50;
n = 0:N-1;
x = sin(2*%pi*f0*n); // Tín hiệu gốc
Px = sum(x.^2) / N; // Công suất tín hiệu gốc (xấp xỉ 0.5)

L_values = [64, 128, 256];
methods = ["Truncation", "Rounding"];

for m = 1:2
    method = methods(m);
    disp("===============================");
    disp("Method: " + method);
    
    for i = 1:length(L_values)
        L = L_values(i);
        delta = 2 / L;
        
        // (a) Truncation (Cắt cụt) & (b) Rounding (Làm tròn)
        if method == "Truncation" then
            xq = delta * floor(x / delta); 
        else
            xq = delta * round(x / delta); 
        end
        
        // Tính toán sai số và SQNR
        e = xq - x;
        Pq = sum(e.^2) / N;
        SQNR_exp = 10 * log10(Px / Pq);
        
        // In kết quả ra màn hình Console
        mprintf("Levels = %d | Experimental SQNR = %.2f dB\n", L, SQNR_exp);
        
        // Vẽ đồ thị stem plot cho TẤT CẢ các trường hợp L = 64, 128, 256
        figure();
        
        subplot(3,1,1);
        plot2d3('nn', n(1:100), x(1:100)); // Dùng stem plot trong Scilab
        title(method + " - Original Signal x(n) (L = " + string(L) + ")");
        
        subplot(3,1,2);
        plot2d3('nn', n(1:100), xq(1:100));
        title("Quantized Signal x_q(n)");
        
        subplot(3,1,3);
        plot2d3('nn', n(1:100), e(1:100));
        title("Quantization Error e(n)");
    end
end
