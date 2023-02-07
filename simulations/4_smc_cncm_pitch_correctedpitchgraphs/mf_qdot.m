function output = mf_qdot(u)

global Kq
global M

CM = u;


qdot = Kq*(M^2)*CM;


output= qdot;
%
return
