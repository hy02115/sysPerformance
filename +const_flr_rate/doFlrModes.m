function [flr_rate, relia_func, MTTF] = doFlrModes(flr_rates, t)
    % t is an optional arugment.
    if(~exist('t', 'var'))
        t = 0;
    end
    flr_rate = sum(flr_rates);
    relia_func = exp(-flr_rate * t);
    MTTF = 1/flr_rate;
end