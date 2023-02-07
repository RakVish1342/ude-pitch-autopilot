% Data file for the simulation of tracking a reference by a third order system
% using simple pole placement technique
clear;clc; close all;
global a11 a12 a13 a21 a22 a23 a31 a32 a33
global a310 a320 a330
global k1 k2 k3
global poles
global A omega
global tstop tstep
global d2r r2d

global kcn kcm

% global xref
global tau
% global r
global x_initial
% global xop xobs
% global omega zeta
% global eta rho new               % SMC Gains
global ua

global an am bn bm cn cm dn dm
global m Vs Po S Ka Kq wa Iy d Ca
global Mn M
global b 

global an_a am_a bn_a bm_a cn_a cm_a dn_a dm_a
%--------------------------------------------------------------------------
% -------------------------------------------------------------------------
d2r=pi/180;
r2d=180/pi;
%
tstep=0.001;
tstop=6;
% 
% -------------------------------------------------------------------------
poles = -12;
k1 = 36;
k2 = 432;
k3 = 1728;

% k1 = 35.98;
% k2 = 432.52;
% k3 = 1730;
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

Ka = 0.7*Po*S/(m*Vs);
Kq = 0.7*Po*S*d/Iy;


% -------------------------------------------------------------------------
kcn = 1.3;    % For introducing uncertainity in Cn
kcm = 0.7;    % For introducing uncertainity in Cm
% MOST oscillation occurs for -30% in both 
% LEAST oscillation occurs for +30% in both 
% PERFECT MATCH for kcn and kcm = 1

an_a = kcn*an;    am_a = kcm*am;
bn_a = kcn*bn;    bm_a = kcm*bm;
cn_a = kcn*cn;    cm_a = kcm*cm;
dn_a = kcn*dn;    dm_a = kcm*dm;

% -------------------------------------------------------------------------


% Nominal M
Mn = 2.25;

% Actual M
M = 2.25;
% -------------------------------------------------------------------------
% B values
% nominal
% bnom = delete
% actual
% b = Kq*(M^2)*dm*wa;
% -------------------------------------------------------------------------
% Values for the reference signal
A = 10;
omega = 10;
tau = 0.01;
% -------------------------------------------------------------------------
% Initial conditions
% x_initial = [-5*d2r;0;0];
%


% -------------------------------------------------------------------------
% PC

global delt
global bpnom const


%a_exp and b_exp function names changed to ap_exp and bp_exp ... contents
%remain the same
delt = 0.18;
% delt = 0.21;
% SMALLER -- narrows the tracking oscillations and has faster tracking, messes up control effort at
% transition points. Magnnitude of tracking and control graphs remains the
% same, unless value of delt is changed by +/- 40% of 0.18
% LARGER -- Slow tracking and accordingly slow control effort. Magnitude of
% tracking and control graphs remains the same, unless value of delt is changed by +/- 40% of 0.18

% bnom deleted (from this file), ie. changed to bpnom
bpnom = Kq*(Mn^2)*dm*wa;
const = -6/(bpnom * delt^3);
% connection to 4 summer: ua removed, nu removed, disturbance removed, ud
% remains disconnected. The 4 summer removed, and nup is the only line
% flowing



sim('siude')
graphude;
% csvude;