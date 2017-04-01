function [MTTF, var, median] = getStat(para)
    validateattributes(para, {'numeric'}, {'>', 0});

    MTTF = 1/para;
    var = 1/para^2;
    median = - log(0.5)/para;
end