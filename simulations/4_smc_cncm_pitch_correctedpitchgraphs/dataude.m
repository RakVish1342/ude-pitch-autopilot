% Data file for the simulation of tracking a reference by a third order system
% using simple pole placement technique
close all; clear;clc;
global tstop tstep
global d2r r2d

global an am bn bm cn cm dn dm
global an_a am_a bn_a bm_a cn_a cm_a dn_a dm_a

global bs

global m Vs Po S Ka Kq wa Iy d Ca
global Mn M
global kcn kcm

global lambda rho phi
%--------------------------------------------------------------------------
% -------------------------------------------------------------------------
d2r=pi/180;
r2d=180/pi;
%
tstep=0.001;
tstop=6;
% 
% -------------------------------------------------------------------------
Po = 46601.85;
S = 0.040877;
m = 204.023;
Vs = 315.89;
d = 0.2286;
Iy = 247.44;
wa = 50; %check this
Ca = -0.3; % check this
an = 19.373;    am = 40.440;
bn = -31.023;   bm = -64.015;
cn = -9.717;    cm = 2.922;
dn = -1.948;    dm = -11.803;



kcn = 1.3;
kcm = 0.7;
an_a = kcn*19.373;    am_a = kcm*40.440;
bn_a = kcn*-31.023;   bm_a = kcm*-64.015;
cn_a = kcn*-9.717;    cm_a = kcm*2.922;
dn_a = kcn*-1.948;    dm_a = kcm*-11.803;


Ka = 0.7*Po*S/(m*Vs);
Kq = 0.7*Po*S*d/Iy;

% lambda = 4;   % higher = faster tracking BUT higher control effort spikes
% rho = 80;     % lower = smaller control effort spikes, mildly jagged/unstable control effort BUT poorer tracking
% phi = 0.5;    % higher = lesser spike, smoother control graph BUT slower tracking
lambda = 7; 
rho = 10;
phi = 0.5;

%ideal values
% lambda = 7; 
% rho = 10;
% phi = 0.5;

% Nominal M
Mn = 2.25;

% Actual M
M = 2.25;
% -------------------------------------------------------------------------
% B values
% nominal
bs_nom = Ka*Mn*dn*wa;
% bs = Ka*M*dn_a*wa;
% -------------------------------------------------------------------------

%
sim('siude')
graphude;
% csvude;