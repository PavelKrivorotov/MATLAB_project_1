function [valid_integval] = get_valid_intervals(start, stop, step, t3, t2, t1, t0)
    x_arr = start : step : stop;
    fx_arr = t3 .* x_arr.^3 + t2 .* x_arr.^2 + t1 .* x_arr + t0;

    valid_integval  = [ ];

    for index = 1 : 1 : length(fx_arr) - 1
        if ( fx_arr(index) < 0 && fx_arr(index + 1) >  0) || ...
           ( fx_arr(index) > 0 && fx_arr(index + 1) < 0 )
            valid_integval(end + 1) = x_arr(index);
            valid_integval(end + 1) = x_arr(index + 1);
        
        elseif fx_arr(index) == 0
            valid_integval(end + 1) = x_arr(index) - 0.01;
            valid_integval(end + 1) = x_arr(index) + 0.01;

        elseif fx_arr(index + 1) == 0
            valid_integval(end + 1) = x_arr(index + 1) - 0.01;
            valid_integval(end + 1) = x_arr(index + 1) + 0.01;

        end
    end

end