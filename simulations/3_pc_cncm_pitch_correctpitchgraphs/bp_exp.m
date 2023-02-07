function output = bp_exp(u)



global dm_a
global Kq wa
global M
%
%
delc = u(1);
%
bp = Kq*(M^2)*dm_a*wa;
%
output = bp*delc;
%
%
return