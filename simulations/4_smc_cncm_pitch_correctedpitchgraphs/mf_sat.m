function output = mf_sat(u)

global phi

ex = u/phi;
if ( (ex < 1) && (ex > -1) )
    out = ex;
else
    out = sign(ex);
end

output = out;
%
return
