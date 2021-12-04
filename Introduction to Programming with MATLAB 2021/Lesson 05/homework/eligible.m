function ret = eligible(v, q)
	a =  [v, q];
	ret = sum([mean(a) >= 92, sum(a > 88)]) == 3;