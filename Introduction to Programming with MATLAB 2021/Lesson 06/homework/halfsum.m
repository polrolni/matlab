function s = halfsum(A)
s = 0;
[rows, cols] = size(A);
for i = 1:rows
	for j = (rows - i + 1):cols
		s = s + A(i,j);
	end
end
	
