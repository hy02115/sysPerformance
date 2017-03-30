function [flr_rate, relia_func, flr_density] = getFunc(t, para)
    relia_func = exp(-para * t);
    flr_rate = para;
    flr_density = para * exp(-para * t); 
end