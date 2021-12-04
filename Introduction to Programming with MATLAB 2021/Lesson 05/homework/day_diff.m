function dd = day_diff(m1, d1, m2, d2)
	d1 = days(m1, d1);
	d2 = days(m2, d2);
	
	if d1 < 0 || d2 < 0
		dd = -1;
	elseif d1 > d2
		dd = d1 - d2;
	else
		dd = d2 - d1;
	end

function dd = days(m, d)
	dm = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
	if ~isIntPositiveScalar(m) || ~isIntPositiveScalar(d) || m > size(dm, 2) || d > dm(m)
		dd = -1;
	else
		dd = sum(dm(1:(m - 1))) + d;
	end	
	
function flag = isIntPositiveScalar(a)
	flag = isscalar(a) && fix(a) == a && a > 0;
		
	