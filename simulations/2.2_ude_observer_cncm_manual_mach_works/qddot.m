function output = qddot(u)

global an_a am_a bn_a bm_a cn_a cm_a dm_a
global Ka Kq wa
global M
%
%
x1 = u(1);
x2 = u(2);
x3 = u(3);
del = u(4);
alphatdot = u(5);
% M = u(5);
%
%
a1 = Kq*(M^2)*(3*am_a*(x1^2) + bm_a*2*abs(x1) + cm_a*(-7+8*M/3))*x2;
a2 = -Kq*(M^2)*dm_a*wa*del;
a3 = Ka*M*(6*an_a*x1 + 2*bn_a*sign(x1))*(x2^2);
a4 = Ka*M*(3*an_a*(x1^2) + 2*bn_a*abs(x1) + cn_a*(2-M/3))*x3;

b1 =  Kq*(M^2)*dm_a*wa*del;
% 
% %
% a1 = Kq*(M^2)*cm_a*(-7+8*M/3)*x2;
% a2 = 0;
% a3 = 0;
% a4 = Ka*M*cn_a*(2-M/3)*x3;
% % 
%
%
qddot = (alphatdot - (a3 + a4));
%
% qddot = a1 + a2 + b1;
%
%
output = qddot;
%
%
return