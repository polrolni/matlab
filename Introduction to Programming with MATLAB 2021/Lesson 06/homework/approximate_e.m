function [e, k] = approximate_e(delta)
	eref = exp(1);
	k = 0;
	kfac = 1;
	e = 1/kfac;
	while abs(eref - e) > delta
		k = k + 1;
		kfac = kfac * k;
		e = e + 1/kfac;
	end
	