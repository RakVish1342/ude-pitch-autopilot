function output = bs_exp(u)

global Ka wa dn_a
global M
%
%
%M = u(1);
delc = u;
%
bs = Ka*M*dn_a*wa;
%
output = bs*delc;
%
%
return