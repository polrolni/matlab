%%%%%%%%%%%%%%%%%%%%%
% Lesson 1 notes
%%%%%%%%%%%%%%%%%%%%%
format compact % vs format loose, format long
a = 1
b = 2
clear a b
clear
close all %% figures
clc

%%%%%%%%%%%%%%%%%%%%%
% Matlab as calculator
%%%%%%%%%%%%%%%%%%%%%
test_val = 5e-2;
c_speed_kps = 3e5;
year_sec = 60 * 60 * 24 * 365;
lightyear_ks = c_speed_kps * year_sec;
earth_to_sun_km = 15e7;
earth_to_sun_min = earth_to_sun_km / c_speed_kps / 60

earth_to_moon_km = 384400;
earth_to_moon_sec = earth_to_moon_km / c_speed_kps
earth_to_moon_min = earth_to_moon_sec / 60

% save workspace
save
% then use load to load workspace

%%%%%%%%%%%%%%%%%%%%%
% Plotting
%%%%%%%%%%%%%%%%%%%%%
t = 0:pi/50:10*pi;
plot3(sin(t),cos(t),t);

x_coords = [1, 3, 10];
y_coords = [2, -4.2, 12.3];
plot(x_coords, y_coords); %% lines
len = length(x_coords);

plot(x_coords, y_coords, '*');  %% points
plot(x_coords, y_coords, 'rs');  %% red squares
grid on;
xlabel('Desc for X');
ylabel('Desc for Y');
title('Some interesting title');
axis([0,12, -10, 20])

figure
bar(x_coords, y_coords)

figure
pie([4 2 7 4 7])

%%%%%%%%%%%%%%%%%%%%%
% Images
%%%%%%%%%%%%%%%%%%%%%
figure
img = imread('screenshot.jpg');
image(img);
axis off




