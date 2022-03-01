function [root_x] = get_equation_root(start, stop, step, t3, t2, t1, t0)
    start_fx = t3 * start^3 + t2 * start^2 + t1 * start + t0;
    stop_fx = t3 * stop^3 + t2 * stop^2 + t1 * stop + t0;

    root_x = (start + stop) / 2;
    root_fx = t3 * root_x^3 + t2 * root_x^2 + t1 * root_x + t0;

    while abs(start) - abs(stop) > step
        if start_fx > 0 && stop_fx < 0
            if root_fx > 0
                start = root_x;
                start_fx = root_fx;
            elseif root_fx < 0
                stop = root_x;
                stop_fx = root_fx;
            else
                break
            end
        
        elseif start_fx < 0 && stop_fx > 0
            if root_fx < 0
                start = root_x;
                start_fx = root_fx;
            elseif root_fx > 0
                stop = root_x;
                stop_fx = root_fx;
            else
                break
            end
        
        else
            %disp('IDK lol')
            break

        end
    
%          disp([start, stop])
%          break

        root_x = (start + stop) / 2;
        root_fx = t3 * root_x^3 + t2 * root_x^2 + t1 * root_x + t0;
            
    end

end