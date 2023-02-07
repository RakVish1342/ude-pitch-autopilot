function output = mfnup(u)

global d2r r2d
global delt
%
d2r = pi/180;
r2d = 180/pi;
%
time = u(1);
x1 = u(2);
x2 = u(3);
x3 = u(4);
ap_nom = u(5);
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
e = x1 - xref;
edot = x2 - xrefdot;
eddot = x3 - xrefddot;
etdot = ap_nom - xreftdot;
% etdot = ap - sys_nom;
% 
% 
nup = e + delt*edot + ((delt^2)*eddot)/2 + ((delt^3)*etdot)/6;
%
output= [xref nup];
%
return
