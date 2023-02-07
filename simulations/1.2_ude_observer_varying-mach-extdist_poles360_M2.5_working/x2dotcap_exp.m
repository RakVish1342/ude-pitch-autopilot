function output = x2dotcap_exp(u)

global l2;


e1 = u(1);
x3cap_new = u(2);


x2dotcap_new = x3cap_new + l2*e1;



output = x2dotcap_new;

return