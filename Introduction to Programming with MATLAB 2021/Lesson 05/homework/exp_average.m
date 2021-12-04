function out = exp_average(val, bb)
	persistent expavg;
	persistent b;

	if nargin == 2
		expavg = val;
		b = bb;
	elseif isempty(expavg)
		expavg = val;
		b = .1;		
	else
		expavg = b * val + (1 - b) * expavg
	end
	
	out = expavg;