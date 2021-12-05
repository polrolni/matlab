function indexes = small_elements(X)
	indexes = [];
	[rows, cols] = size(X);
	for j = 1:cols
		for i = 1:rows
			if X(i,j) < i * j
				indexes = [indexes; i j];
			end
		end
	end
	
	