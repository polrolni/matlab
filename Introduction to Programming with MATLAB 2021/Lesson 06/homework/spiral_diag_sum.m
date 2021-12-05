function s = spiral_diag_sum(n)
	last = 1;
	s = last;
	for i = 2:2:n
		for fourtimes = 1:4
			last = last + i;
			s = s + last;
		end
	end