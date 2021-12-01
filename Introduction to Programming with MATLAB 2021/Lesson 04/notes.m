%%%%%%%%%%%%%%%%%%%%%
% Lesson 4 notes
%%%%%%%%%%%%%%%%%%%%%
format compact
clear
close all %% figures
clc

[a b] = max([1 2 -4 8])
s = size([1 2; 9 8; 0 -2])
[row col] = size([1 2; 9 8; 0 -2])

%%%%%%%%%%%%%%%%%%%%%
% matrixes
%%%%%%%%%%%%%%%%%%%%%
zeros(5, 6)
zeros(4)
ones(4, 2)
diag([7 3  9 1])

%%%%%%%%%%%%%%%%%%%%%
% random numbers
%%%%%%%%%%%%%%%%%%%%%
rand
fix(1 + rand(5) * 10)
randi(10, 5) % uniform integer distribution
randn(5) % gaussian distribution
r = randn(1, 1e6);
hist(r, 100);

% reset rng
rng(0);
[rand randn randi(10)]
rng('shuffle'); % use internal clock to seen the rng

%%%%%%%%%%%%%%%%%%%%%
% printing
%%%%%%%%%%%%%%%%%%%%%
fprintf('Hi\n');
checkout(2, 0.67895);
fprintf('Escape chars: %% \\ ''\n')
% recycling format string
fprintf('Value %d\n', 1, 2, 3, 4, 5);
fprintf('\n');
fprintf('Value %4.1f\n', [1, 2, 3, 4, 5]);

%%%%%%%%%%%%%%%%%%%%%
% plotting
%%%%%%%%%%%%%%%%%%%%%
figure;
a = (1:10).^2;
plot(a);

figure;
y = (-10:10).^2;
x = -10:10;
plot(x, y);

figure;
x1 = 0:.1: 2*pi;
y1 = sin(x1);
x2 = pi/2:.1:3*pi;
y2 = cos(x2);
plot(x1,y1,'r', x2,y2, 'k<');
figure(1);
plot(x2,y2, 'k>');
hold on
grid on
xlabel('test X label 1')
ylabel('test Y label 1')
figure(4);
legend('sine', 'cosine')
axis([-2 12 -1.5 1.5])