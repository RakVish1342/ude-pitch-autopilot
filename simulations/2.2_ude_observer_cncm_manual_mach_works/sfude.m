% S-function to dynamics expressed as differential equations
function[sys,x0]=sfijc2f(t,x,u,flag)
global c1o c2o c3o c4o c5o c6o
% global c1 c2 c3 c4 c5 c6
global xop
% -------------------------------------------------------------------------
%   For Simulation sake only
% -------------------------------------------------------------------------
% c1o=5;c2o=-26.7;c3o=0.765;c4o=-2.9;c5o=-2.5;
% c6o=(180/pi)*0.75;  %IMPORTANT
% 
% c1 = 6;                 % As per Crassidis Paper - Case 1
c1=5*sin(15*t);         %As per Crassidis Paper - Case 2
% c1=c1o;
% c2=-20;               %our paper
c2=c2o;                
% c3=1;                 %our Paper
c3=c3o;
c4=3*cos(5*t);          %As per Crassidis Paper
% c4=c4o;
c5=10*sin(10*t);        %As per Crassidis Paper
% c5=c5o;
% c6=(180/pi)*0.5;         %IMPORTANT
c6=c6o;
% ------------------------------------------------------------------------
%
if abs(flag)==1 %return state derivatives
%
   phi=x(1);
   phid=x(2);
%   
   sys(1)= phid;
   sys(2)= c1 + c2*phi + c3*phid + c4*abs(phi)*phid + c5*abs(phid)*phid + c6*u;
%
elseif flag==3 %return system output
%
   phi=x(1);
   phid=x(2);
%
   sys(1)=phi;
   sys(2)=phid;
   phidd = c1 + c2*phi + c3*phid + c4*abs(phi)*phid + c5*abs(phid)*phid + c6*u;
   d = phidd - (c2o*phi + c3o*phid + c6o*u);
   sys(3)=d;
   sys(4)=u;
   sys(5)=t;
%
elseif flag==0 %return initial conditions
%
   sys=[2;0;5;1;0;1];
   x0=xop;
else
   sys=[];
end
