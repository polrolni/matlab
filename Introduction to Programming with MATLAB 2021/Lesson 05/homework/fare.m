function f = fare(dist, age)
	zones = [2, .25, .1];	
	legs = [dist > 0, min(round(dist - 1), 9), round(dist - 10)];
	flags = legs > 0;	
	f = legs .* flags * zones'
	
	if age <= 18 || 60 <= age
		f = f * .8;
	end
