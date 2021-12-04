function [a b c] = sort3(v)
	if v(1) <= v(2) 
		if v(2) <= v(3)
			a = v(1);
			b = v(2);
			c = v(3);
		else
			[a, b, c] = sort3([v(1), v(3), v(2)]);	
		end
	else
		[a, b, c] = sort3([v(2), v(1), v(3)]);
	end
