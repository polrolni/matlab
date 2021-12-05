%% Lesson 6 notes

%% cleanup
format compact
clear
close all %% figures
clc

%% for loops
v  = 7:9;
for i = 1:length(v)
	fprintf('%d\n', v(i));
end

count = 0;
for n = rand(1,3)
	count = count + 1;
	fprintf('Element %d ... %f\n', count, n(1));
end

m = rand(3,4);
[rows, cols] = size(m);
p = 0;
for row = 1:rows
	for col = 1:cols
		p = p + m(row, col);
	end
end
p

%% while loops
total = 0;
n = 0;
while total <= 50
	n = n + 1;
	total = total + n;
end
fprintf('sum: %d, count: %d\n', total, n);

%% break loops
for i = 1:10
	if i > 3
		break;
	end
end
fprintf('last index before break %d\n', i);

%% break from nested loops
rng(0);
A = randi(99, 5, 8);
found = false;
for i = 1:size(A, 1)	
	for j = 1:size(A, 2)	
		if A(i, j) <= 90
			A(i, j) = 0;
		else
			found = true;
			break;
		end
	end
	if found
		break;
	end
end
A

%% logical indexing

% vectors
a = [1 -3 2 5 -4]
keepers1 = a > 0;
keepers2 = logical([0 1 0 1]);
a(keepers1)
a(keepers2)
a(a > 0)
a(a < 0) = 0
a(a == 0) = [100, 200]
a(a >= 100) = a(a >= 100) + 50

% matrices
A = [1 2 3; 4 5 6]
B = A(A > 2)
A_column_major_order = A(:)
rng(0); A = randn(5);
A(A < 0) = 101:108 % column - major order replacement

%% preallocation
tic;
N = 5000;
A = zeros(N, N);
for i = 1:N
	for j = 1:N
		A(i,j) = i * j;
	end
end
toc

