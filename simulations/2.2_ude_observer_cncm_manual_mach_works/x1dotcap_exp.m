function output = x1dotcap_exp(u)

global l1;


e1 = u(1);
x2cap_new = u(2);


x1dotcap_new = x2cap_new + l1*e1;



output = x1dotcap_new;

return