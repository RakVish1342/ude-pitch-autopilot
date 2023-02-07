function output = b_exp(u)


global dm_a
global Kq wa
global M
%
%
% M = u(1);
% delc = u(1);
delc = u;
%
b = Kq*(M^2)*dm_a*wa;
%
output = b*delc;
%
%
return