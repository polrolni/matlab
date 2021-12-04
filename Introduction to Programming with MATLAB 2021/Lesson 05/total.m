function total = total(n)
%TOTAL Summary of this function goes here
%   Detailed explanation goes here

persistent summa;
if isempty(summa)
	summa = n;
else
	summa = summa + n;
end

total = summa;

