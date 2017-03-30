% An item has a constant failure rate of 0.00034 failure/hour.

% The MTTF is 2941 hr.
mttf = const_flr_rate.getStat(0.00034);

% The median of the distribution is 2039 hr.
[~, ~, median] = const_flr_rate.getStat(0.00034);

% The reliability over a 30-day continuous operating function is 0.78286
[~, reliability, ~] = const_flr_rate.getFunc(30*24, 0.00034);

% An item consists of 3 modules having constant failure rates.
% 0.002, 0.015, 0.0025 failures/operating hr
% The MTTF is 51.28 operating hr.
[~, reliability_flr_modes, MTTF_flr_modes] = const_flr_rate.doFlrModes([0.002, 0.015,0.0025]);