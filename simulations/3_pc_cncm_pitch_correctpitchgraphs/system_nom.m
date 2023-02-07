function output = system_nom(u)

global bpnom
%
apnom = u(1);
delc = u(2);
%
system_out = apnom + bpnom*delc;
%
output = system_out;
%
%
return