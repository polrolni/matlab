function [a, s] = myRand(low, hi)
	a = low + rand(3, 4) * (hi - low);
	s = sum(a(:));
end
