function output = ext_dist(u)

global d2r r2d

time = u(1);

amp = 8*d2r;
freq = 0.25;
ext_dist = amp*sin(2*pi*freq*time);


% ext_dist = 4;

output = ext_dist;