function [flr_rate, relia_func, flr_density] = getFunc(t, para)
    validateattributes(t, {'numeric'}, {'>=', 0});
    validateattributes(para, {'numeric'}, {'>', 0});
    
    relia_func = exp(-para * t);
    flr_rate = para;
    flr_density = para * exp(-para * t); 
end