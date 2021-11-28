function [t, dist] = light_speed(v)
	s = 3e5 * 60; % [km/min]
	t = v ./ s;
	dist = v ./ 1.609;