function output = obs_a_exp(u)

global a_eqn

global an am bn bm cn cm dn dm
global m Vs Po S Ka Kq wa Iy d Ca
global l3
global Mn
%
%
x1cap = u(1);
x2cap = u(2);
x3cap = u(3);
del = u(4);
e1 = u(5);
dcap_obs = u(6);
% M = u(5);
%
%

%%%% SHOULD THIS USE M-nominal???
% % 
% a1 = Kq*(M^2)*(3*am*(x1cap^2) + bm*2*abs(x1cap) + cm*(-7+8*M/3))*x2cap;
% a2 = -Kq*(M^2)*dm*wa*del;
% a3 = Ka*M*(6*an*x1cap + 2*bn*sign(x1cap))*(x2cap^2);
% a4 = Ka*M*(3*an*(x1cap^2) + 2*bn*abs(x1cap) + cn*(2-M/3))*x3cap;
% % 
%
a1 = Kq*(Mn^2)*cm*(-7+8*Mn/3)*x2cap;
a2 = 0;
a3 = 0;
a4 = Ka*Mn*cn*(2-Mn/3)*x3cap;
% 

compensation = l3*e1;
%
%
% dcap_obs = 0;
a_eqn = a1 + a2 + a3 + a4 + compensation - dcap_obs; %% DO I NEED TO ADD A Dcap/disturbance TERM HERE AS WELL??
%
%
output = a_eqn;
%
%
return