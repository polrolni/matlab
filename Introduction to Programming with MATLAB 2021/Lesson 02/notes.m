%%%%%%%%%%%%%%%%%%%%%
% Lesson 2 notes
%%%%%%%%%%%%%%%%%%%%%
format compact
clear
close all
clc

%%%%%%%%%%%%%%%%%%%%%
% Matrix operations
%%%%%%%%%%%%%%%%%%%%%
m = [1:4; 5:8; 9:12];
m_add = m + m;
m_div = m./m
m_div_rev = m.\m
m_mult = m * m'
m(end, end)
size(m)

%%%%%%%%%%%%%%%%%%%%%
% Colon operator
%%%%%%%%%%%%%%%%%%%%%
vector = 1:3:7
reversed_vector = 7:-3:1
down_by_10 = 100:-10:-100
ints = 1:100;
size(ints)

plus(1,2)
colon(1,7)

%%%%%%%%%%%%%%%%%%%%%
% Empty matrices
%%%%%%%%%%%%%%%%%%%%%
empty_1 = [];
size(empty_1)
empty_2 = 7:1;
size(empty_2)

%%%%%%%%%%%%%%%%%%%%%
% matrix dynamic extension
%%%%%%%%%%%%%%%%%%%%%
XYZ(2, 2) = 123
m(4, 5) = 456

%%%%%%%%%%%%%%%%%%%%%
% subarray operations
%%%%%%%%%%%%%%%%%%%%%
X = [1 2 3; 4 5 6]
X(2, [1 3])
X([2 1], 2)
X([2 1 2], [3 1 1 2])
X(2, :)
X(end, 2)
X(:)
X(end + 1, 1) = 17
X(:, 4) = -44
X(:, [2 3]) = [10 20; 30 40; 50 60]

%%%%%%%%%%%%%%%%%%%%%
% combining matrices
%%%%%%%%%%%%%%%%%%%%%
A = [1 4; 2 5; 3 6];
B = [9 8; 7 6; 5 4];
C = [A B; B A];

%%%%%%%%%%%%%%%%%%%%%
% arithmetics
%%%%%%%%%%%%%%%%%%%%%
C = C'
C = C + C
C = C .* C
C = C .* 2
C = C + 2
C = C - 2
[1 2 3] * [4 5 6]'
C = C .^ 2

