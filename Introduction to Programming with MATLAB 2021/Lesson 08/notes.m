%% Lesson 7 notes

%% cleanup
format compact
clear
close all % figures
clc

%% file input/output
path = pwd;
cd('..');
parentdir = ls;
cd(path);
parentdir

% ex. of function call with one param without parentheses
afunc 'bello'

% string concatenation
['hello' 'world']


% save-retrieve workspace
save my_data path; 
clear;
load my_data;

%% excel
[num, txt, raw] = xlsread('examples/Nashville_climate_data.xlsx');
xlsread('examples/Nashville_climate_data.xlsx', 1, 'D15:E17')

%% text files
fid = fopen('test.txt', 'at');
fprintf(fid, 'Here I am\n');
fclose(fid);

%% binary files
fid = fopen('test.binfile', 'w+');
fprintf(fid, 'Here I am\r\n');
fprintf(fid, 'Here I am\r\n');
fprintf(fid, 'Here I am\r\n');
fclose(fid);
fid = fopen('test.binfile', 'r');
A = fread(fid, 'char');
fclose(fid);
char(A)'

fid = fopen('test2.binfile', 'w+');
rng(0); data = randn(10,12);
fwrite(fid, length(size(data)), 'double');
fwrite(fid, size(data), 'double');
fwrite(fid, data, 'double');
fclose(fid);
