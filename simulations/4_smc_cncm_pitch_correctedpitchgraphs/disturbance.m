function output = disturbance(u)

global a_eqn
global an am bn bm cn cm dn dm
global m Vs Po S Ka Kq wa Iy d Ca
%
%
x1 = u(1);
x2 = u(2);
x3 = u(3);
del = u(4);
M = u(5);
%
% non-linear terms taken as known disturbance terms
% 
% Sometimes commented here so that the entire mfua expression takes care of full
% control expression 
% dist1 = Kq*(M^2)*(3*am*(x1^2)+bm*2*abs(x1))*x2;
% dist2 = -Kq*(M^2)*dm*wa*del;
% dist3 = Ka*M*(6*an*x1+2*bn*sign(x1))*(x2^2);
% dist4 = Ka*M*(3*an*(x1^2)+2*bn*abs(x1))*x3;


global Mn
% To tatally equate the use of dist term with Ua, M should be made Mn...is
% this correct though? ... why is it Mn for Ua?
dist1 = Kq*(Mn^2)*(3*am*(x1^2)+bm*2*abs(x1))*x2;
dist2 = -Kq*(Mn^2)*dm*wa*del;
dist3 = Ka*Mn*(6*an*x1+2*bn*sign(x1))*(x2^2);
dist4 = Ka*Mn*(3*an*(x1^2)+2*bn*abs(x1))*x3;

% 
%
dist_total = (dist1 + dist2 + dist3 + dist4 );
output = dist_total;
% output = 0;
%
%
return