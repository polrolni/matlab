function p = poly_val(c0, c, x)
	if isempty(c)
		p = poly_val(c0, 0, x);
	elseif size(c, 1) > 1
		p = poly_val(c0, c', x);
	else
		p = c0 + c * (x .^ (1:size(c,2)))';
	end