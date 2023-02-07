% Data file for the simulation of tracking a reference by a third order system
% using simple pole placement technique
clear all;clc;close all;

global k1 k2 k3
global l1 l2 l3 l4
global tstop tstep
global d2r r2d
global tau

global an am bn bm cn cm dn dm
global m Vs Po S Ka Kq wa Iy d Ca
global Mn
% global M
global bnom %b
%--------------------------------------------------------------------------
d2r=pi/180;
r2d=180/pi;

tstep=0.001;
tstop=6;
% -------------------------------------------------------------------------
k1 = 35.98;
k2 = 432.52;
k3 = 1730;
% -------------------------------------------------------------------------

% same as controller  poles
% l1 = 35.98;
% l2 = 432.52;
% l3 = 1730;

% Poles are at -120 (10x the controller poles)
% l1 = 360;
% l2 = 43200;
% l3 = 1728000;

% % Poles are at -200
% l1 = 600;
% l2 = 120000;
% l3 = 8000000;

% % Poles are at -240
% l1 = 720;
% l2 = 172800;
% l3 = 13824000;

% % Poles are at -360
l1 = 1080;
l2 = 388800;
l3 = 46656000;

% % Poles are at -900
% l1 = 2700;
% l2 = 2430000;
% l3 = 729000000;

% Poles are at -1200
% l1 = 3600;
% l2 = 4320000;
% l3 = 1728000000;

% poles at -3
% l1 = 9;
% l2 = 27;
% l3 = 27;

% Paper ESO Poles
% l1 = 8.4935*10^11;
% l2 = 353894400;
% l3 = 552960;
% l4 = 3840;

% l1 = 0;
% l2 = 0;
% l3 = 0;

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

% Nominal M
Mn = 2.25;
% Actual M
% M = 2.25;

% -------------------------------------------------------------------------
% B values
% nominal
bnom = Kq*(Mn^2)*dm*wa;
% actual
% b = Kq*(M^2)*dm*wa;
% -------------------------------------------------------------------------
% Values for the reference signal
tau = 0.01;
% -------------------------------------------------------------------------


sim('siude')
graphude;
% csvude;