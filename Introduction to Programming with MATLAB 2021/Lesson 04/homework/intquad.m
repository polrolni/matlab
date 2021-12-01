function Q = intquad(n, m)
	q = ones(n,m);
	Q = [	
			q * 0 q * 1; 
			q * 2 q * 3
		];