% A item has a constant failure rate of 0.00034 failure/hour.

% The MTTF is 2941 hr.
mttf = const_flr_rate.getStat(0.00034);

% The median of the distribution is 2039 hr.
[~, ~, median] = const_flr_rate.getStat(0.00034);

% The reliability over a 30-day continuous operating function is 0.78286
[~, reliability, ~] = const_flr_rate.getFunc(30*24, 0.00034);