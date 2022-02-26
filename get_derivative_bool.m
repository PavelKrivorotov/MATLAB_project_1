function [bool] = get_derivative_bool(start, stop, step, t3, t2, t1, t0)
    x_arr = start : step : stop;
    fx_arr = t3 .* x_arr.^3 + t2 .* x_arr.^2 + t1 .* x_arr + t0;

%     derivative_fx_arr = zeros(1, length(fx_arr) - 1);

    count_positive = 0;
    count_negative = 0;

    for index = 1 : 1 : length(fx_arr) - 1
        fx_der = ( fx_arr(index + 1) - fx_arr(index) ) / step;
%         derivative_fx_arr(index) = fx_der;

        if fx_der > 0
            count_positive = count_positive + 1;

        elseif fx_der < 0
            count_negative = count_negative + 1;
        end
    end
   
%     count_positive = 0;
%     count_negative = 0;

%     for index = 1 : 1 : length(derivative_fx_arr)
%         if derivative_fx_arr(index) > 0
%             count_positive = count_positive + 1;
% 
%         elseif derivative_fx_arr(index) < 0
%             count_negative = count_negative + 1;
%         end
%     end
    
    if count_positive && count_negative
        bool = true;
    else
        bool = false;
    end

end