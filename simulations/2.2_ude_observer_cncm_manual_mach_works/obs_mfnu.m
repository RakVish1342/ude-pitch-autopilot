function output = obs_mfnu(u)
% global A omega
global k1 k2 k3
global d2r r2d
%
d2r = pi/180;
r2d = 180/pi;
%
time = u(1);
x1cap = u(2);
x2cap = u(3);
x3cap = u(4);
% 
% For sinusoidal reference

xref = zeros(1, length(time));

xref(time>=0 & time<=2) = 0.2618;
xref(time>2 & time<=4) = -0.1396;
xref(time>4 & time<=6) = 0.1745;
% 
xrefdot = 0;
xrefddot = 0;
xreftdot = 0;
%
xe = x1cap - xref;
xedot = x2cap - xrefdot;
xeddot = x3cap - xrefddot;
% 
% 
nu = xreftdot - k1*xeddot - k2*xedot - k3*xe;
%
output= [xref nu];
%
return
