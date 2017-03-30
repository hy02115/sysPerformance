function [MTTF, var, median] = getStat(para)
    MTTF = 1/para;
    var = 1/para^2;
    median = - log(0.5)/para;
end