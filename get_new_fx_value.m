function [fx_value] = get_new_fx_value(div_diff_arr, x_arr, x)
    fx_value = 0;

    for index = 1 : 1 : length(div_diff_arr)
        value = div_diff_arr(index);
        counter = index - 1;

        while counter > 0
            value = value * (x - x_arr(counter));
            counter = counter - 1;
        end
        
        fx_value = fx_value + value;

    end

end