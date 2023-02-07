function output = mfua(u)

global ua

global an am bn bm cn cm dn dm
global m Vs Po S Ka Kq wa Iy d Ca
global Mn
%
%
x1 = u(1);
x2 = u(2);
x3 = u(3);
del = u(4);
%
% complete expression
% a1n = Kq*(Mn^2)*(3*am*(x1^2)+bm*2*abs(x1)+cm*(-7+8*Mn/3))*x2;
% a2n = -Kq*(Mn^2)*dm*wa*del;
% a3n = Ka*Mn*(6*an*x1+2*bn*sign(x1))*(x2^2);
% a4n = Ka*Mn*(3*an*(x1^2)+2*bn*abs(x1)+cn*(2-Mn/3))*x3;
% %
%
% Sometimes commented if the whole effect is to be taken into consideration
% in the ua block itself
a1n = Kq*(Mn^2)*(cm*(-7+8*Mn/3))*x2;
a2n = 0;
a3n = 0;
a4n = Ka*Mn*(cn*(2-Mn/3))*x3;

ua = -(a1n + a2n + a3n + a4n);
%
%
output = ua;
%
%
return