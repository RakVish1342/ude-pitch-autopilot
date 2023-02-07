clc; clear all; close all;

r2d = 180/pi;

xref = csvread('XREF.csv');
t = csvread('T.csv');

%%% ======================== ude_observer_varying-mach ======================
x1 = csvread('ude_observer_varying-mach_X1_.csv');
x1cap = csvread('ude_observer_varying-mach_X1-CAP_.csv');
control = csvread('ude_observer_varying-mach_CONTROL_.csv');
Mach_con = csvread('ude_observer_varying-mach_MACH_.csv');
dist = csvread('ude_observer_varying-mach_DIST_.csv');
dcap = csvread('ude_observer_varying-mach_DCAP_.csv');
pitch1 = csvread('ude_observer_varying-mach_PITCH_.csv');
%%%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(0,'DefaultAxesFontName', 'Times', 'DefaultTextFontName', 'Times')
set(gca,'FontSize',16)
plot(t,control*r2d,'k-');grid;
xlabel('Time (s)','fontsize', 16, 'FontWeight','bold');
ylabel('Control Surface Deflection (deg)','fontsize', 16, 'FontWeight','bold');

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(0,'DefaultAxesFontName', 'Times', 'DefaultTextFontName', 'Times')
set(gca,'FontSize',16)
plot(t,x1*r2d,'k-', t,x1cap*r2d,'b--', t,xref*r2d,'r:');grid;
xlabel('Time (s)', 'fontsize', 16, 'FontWeight','bold');
ylabel('Angle of Attack (deg)', 'fontsize', 16, 'FontWeight','bold');
legend('x1-actual', 'x1-cap', 'xref');

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(0,'DefaultAxesFontName', 'Times', 'DefaultTextFontName', 'Times')
set(gca,'FontSize',16)
plot(t,dist*r2d,'r:',t,dcap*r2d,'k-');grid;
xlabel('Time (s)','fontsize', 16, 'FontWeight','bold');
ylabel('Uncertainty and its Estimate (deg/s^{3})','fontsize', 16, 'FontWeight','bold');
legend('disturbance','estimated disturbance');

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(0,'DefaultAxesFontName', 'Times', 'DefaultTextFontName', 'Times')
set(gca,'FontSize',16)
plot(t,Mach_con,'k-');grid;
xlabel('Time (s)','fontsize', 16, 'FontWeight','bold');
ylabel('Mach Number','fontsize', 16, 'FontWeight','bold');

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(0,'DefaultAxesFontName', 'Times', 'DefaultTextFontName', 'Times')
set(gca,'FontSize',16)
plot(t,pitch1*r2d,'k-');grid;
xlabel('Time (s)','fontsize', 16, 'FontWeight','bold');
ylabel('Pitch Rate (deg/s)','fontsize', 16, 'FontWeight','bold');

% %%% ======================== Other CnCm ======================
% kcn = 1.3;
% kcm = 0.7;
% 
% 
% filename = strcat('ude_observer_cncm', '_kcn=', num2str(kcn), '_kcm=', num2str(kcm), '_X1_.csv');
% x1_ude = csvread(filename);
% filename = strcat('ude_observer_cncm', '_kcn=', num2str(kcn), '_kcm=', num2str(kcm), '_CONTROL_.csv');
% control_ude = csvread(filename);
% filename = strcat('ude_observer_cncm', '_kcn=', num2str(kcn), '_kcm=', num2str(kcm), '_PITCH_.csv');
% pitch_ude = csvread(filename);
% 
% filename = strcat('pc_cncm_pitch', '_kcn=', num2str(kcn), '_kcm=', num2str(kcm), '_X1_.csv');
% x1_pc = csvread(filename);
% filename = strcat('pc_cncm_pitch', '_kcn=', num2str(kcn), '_kcm=', num2str(kcm), '_CONTROL_.csv');
% control_pc = csvread(filename);
% filename = strcat('pc_cncm_pitch', '_kcn=', num2str(kcn), '_kcm=', num2str(kcm), '_PITCH_.csv');
% pitch_pc = csvread(filename);
% 
% filename = strcat('smc_cncm_pitch', '_kcn=', num2str(kcn), '_kcm=', num2str(kcm), '_X1_.csv');
% x1_smc = csvread(filename);
% filename = strcat('smc_cncm_pitch', '_kcn=', num2str(kcn), '_kcm=', num2str(kcm), '_CONTROL_.csv');
% control_smc = csvread(filename);
% filename = strcat('smc_cncm_pitch', '_kcn=', num2str(kcn), '_kcm=', num2str(kcm), '_PITCH_.csv');
% pitch_smc = csvread(filename);
% 
% 
% brown = [0.63, 0.078, 0.18];
% %--------------------------------------------------------------------------
% figure;
% set(gcf,'DefaultLineLineWidth',1.5)
% set(gca,'FontSize',18,'FontWeight','bold')
% hold on;
% plot(t,control_pc*r2d,'k--', 'Color',brown);
% plot(t,control_smc*r2d, 'b-.');
% plot(t,control_ude*r2d,'k-');
% grid;
% xlabel('Time (s)','fontsize', 18);
% ylabel('Control Surface Deflection (deg)','fontsize', 18);
% legend('control-pc', 'control-smc', 'control-ude');
% %--------------------------------------------------------------------------
% figure;
% set(gcf,'DefaultLineLineWidth',1.5)
% set(gca,'FontSize',18,'FontWeight','bold')
% hold on;
% plot(t,xref*r2d,'r:');
% plot(t,x1_pc*r2d,'k--', 'Color',brown);
% plot(t,x1_smc*r2d, 'b-.');
% plot(t,x1_ude*r2d,'k-');
% grid;
% xlabel('Time (s)', 'fontsize', 18);
% ylabel('Angle of Attack (deg)', 'fontsize', 18);
% legend('x1-ref', 'x1-pc', 'x1-smc', 'x1-ude');
% %--------------------------------------------------------------------------
% figure;
% set(gcf,'DefaultLineLineWidth',1.5)
% set(gca,'FontSize',18,'FontWeight','bold')
% hold on;
% plot(t,pitch_pc*r2d,'k--', 'Color',brown);
% plot(t,pitch_smc*r2d, 'b-.');
% plot(t,pitch_ude*r2d,'k-')
% grid;
% xlabel('Time (s)', 'fontsize', 18);
% ylabel('Pitch Rate (deg/s)', 'fontsize', 18);
% legend('pitch-pc', 'pitch-smc', 'pitch-ude');