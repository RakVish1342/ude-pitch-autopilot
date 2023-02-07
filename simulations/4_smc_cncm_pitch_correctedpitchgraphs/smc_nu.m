function output = smc_nu(u)

global lambda
global Ka
global wa
global an bn cn dn
global M
%

time = u(1);
x1 = u(2);
x2 = u(3);
x3 = u(4);
del = u(5);
qdot = u(6);
CN = u(7);
% 
% For sinusoidal reference

xref = zeros(1, length(time));

xref(time>=0 & time<=2) = 0.2618;
xref(time>2 & time<=4) = -0.1396;
xref(time>4 & time<=6) = 0.1745;
% 
xrefdot = 0;
xrefddot = 0;
%xreftdot = 0;
%
e = x1 - xref;
edot = x2 - xrefdot;
% 
% 
nu = lambda*edot - xrefddot + Ka*M*( ( 3*an*(x1^2) + 2*bn*abs(x1) + cn*(2 - M/3) )*x2*cos(x1) - CN*sin(x1)*x2 ) - Ka*M*dn*wa*del + qdot;
%
s = edot + lambda*e;



output= [xref nu s e edot];
%
return
