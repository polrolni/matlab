function h = holiday(m, d)
	mm = [1 7 12 12];
	dd = [1 4 25 31];
	h = (mm == m) * (dd == d)' > 0;
