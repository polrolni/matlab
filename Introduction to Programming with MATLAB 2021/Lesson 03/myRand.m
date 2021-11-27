function [a, s] = myRand(low, hi)
	a = low + rand(3, 4) * (hi - low);
	s = sumAllElements(a);
end

function summa = sumAllElements(M)
	global v;
	v = M(:);
	summa = sum(v);
end
