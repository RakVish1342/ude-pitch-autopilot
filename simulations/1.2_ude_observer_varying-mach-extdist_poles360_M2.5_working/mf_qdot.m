function output = mf_qdot(u)

global Kq

CM = u(1);
M = u(2);

qdot = Kq*(M^2)*CM;


output= qdot;
%
return
