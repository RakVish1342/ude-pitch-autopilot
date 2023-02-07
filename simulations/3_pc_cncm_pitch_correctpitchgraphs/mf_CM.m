function output = mf_CM(u)


global am bm cm dm 
global M

x1 = u(1);
% x2 = u(2);
% x3 = u(3);
% del = u(4);
del = u(2);

CM = am*(x1^3) + bm*x1*abs(x1) + cm*(-7 + (8*M)/3)*x1 + dm*del;


output= CM;
%
return
