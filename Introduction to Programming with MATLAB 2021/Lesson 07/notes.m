%% Lesson 7 notes

%% cleanup
format compact
clear
close all %% figures
clc

%% data types
x = 23;
class(x)
class(0)
class(sqrt(-1))
y = 1:8;
z = rand(2,3);
whos

%% data types II
clear;
clc;
x = single(98.76);
m = uint16(1234);
n = int8(-16);
% clipping
k = uint8(-1);
fprintf('%5d converted with uint8 is %5d\n', -1, k);
% clipping again
l = uint8(256);
fprintf('%5d converted with uint8 is %5d\n', 256, l);
whos
% variables type fluidity
k = 2;
class(k)
k = 'other type now'
class(k)
% minimums
fprintf('min  uint8: %15d\n', intmin('uint8'));
fprintf('min uint32: %15d\n', intmin('uint32'));
fprintf('min double: %15d\n', realmin('double'));
fprintf('min single: %15d\n', realmin('single'));
fprintf('max single: %15d\n', realmax('single'));

%% strings
clc
for i = 33:126
	fprintf('%s', char(i));
	fprintf('%s', i);
end
fprintf('%s\n', ' ... done');
title = 'MATLAB for Smarties';
fprintf('%s\n', title);
length(title)
title(end - 7:end)
a = title(1:6);
b = a(end:-1:1);
a == b
code = double(title)
secret = char(code + 3)
char(secret - 3)

% find (findstr deprecated)
position = strfind(title, 'LAB');
fprintf('Found in position %d\n', position);
position = strfind(title, 'lab');
fprintf('Found in position %d\n', position);
position = strfind(title, 'r');
fprintf('r found in position %d\n', position);
strcmp(title, 'MATLAB')
strcmp(title(1:6), 'MATLAB')
strcmpi(title(1:6), 'Matlab')
fprintf('%s\n', title + 3)
str2num('3.123') + 1
num2str(3.123)
out = sprintf('%s', 'test me');
out

%% struct
clc
clear

account.number = 1234;
account.balance = 5000;
account.owner.name = 'Joe Smith';
account.owner.email ='joe@bobo.com';
account.owner.age = 23;

class(account)
class(account.balance)
account.owner

account(2).number = 5678;
account(2).owner.name = 'Jane Farmer';
% isfield
% setfield
% rmfield
% struct

%% Cells 
page{1} = 'You cannot bring anything with you into';
page{2} = 'the testing room. You will be provided with';
page{3} = 'something to write on and something to write with.';
page{4} = 'This varies by testing center, but often it is a small';
page{5} = 'erasable white board and a marker. You cannot take anything with you';
whos
class(page{1})

%% print it
fprintf('\n'); 
for i = 1:length(page)
	fprintf('%s\n', page{i});
end
fprintf('\n'); 

%% cell arrays
p = cell(2 ,3);
p{2,1} = pi;

