function output = mf_CNCM(u)


global an bn cn dn
global am bm cm dm 
global M

x1 = u(1);
x2 = u(2);
x3 = u(3);
del = u(4);

CN = an*(x1^3) + bn*x1*abs(x1) + cn*(2-M/3)*x1 + dn*del;

CM = am*(x1^3) + bm*x1*abs(x1) + cm*(-7 + (8*M)/3)*x1 + dm*del;


output= [CN CM];
%
return
