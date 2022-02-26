function [div_diff, div_diff_arr] = get_divided_difference(fx_arr, x_arr, index_arr)
    if length(index_arr) > 2
        [left_val, left_arr] = get_divided_difference(fx_arr, x_arr, index_arr(2:end));
        [right_val, right_arr] = get_divided_difference(fx_arr, x_arr, index_arr(1:end - 1));
        
        % disp(left_val)
        % disp(right_val)

        div_diff = ( left_val - right_val ) / ...
                   ( x_arr(index_arr(end)) - x_arr(index_arr(1)) );

        div_diff_arr = right_arr;
        div_diff_arr(end + 1) = right_val;
    
    else
        div_diff = ( fx_arr(index_arr(2)) - fx_arr(index_arr(1)) ) / ...
                   ( x_arr(index_arr(2)) - x_arr(index_arr(1)) );

        div_diff_arr = [ ];
    end

end