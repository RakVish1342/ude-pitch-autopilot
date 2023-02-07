global r2d
close all;
% global kcn kcm
%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(0,'DefaultAxesFontName', 'Times', 'DefaultTextFontName', 'Times')
set(gca,'FontSize',16)
plot(t,control*r2d,'k-');grid;
xlabel('Time (s)','fontsize', 16);
ylabel('Control Surface Deflection (deg)','fontsize', 16);

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(0,'DefaultAxesFontName', 'Times', 'DefaultTextFontName', 'Times')
set(gca,'FontSize',16)
plot(t,x1*r2d,'k-', t,x1cap*r2d,'b--', t,xref*r2d,'r:');grid;
xlabel('Time (s)', 'fontsize', 16);
ylabel('Angle of Attack (deg)', 'fontsize', 16);
legend('x1-actual', 'x1-cap', 'xref');

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(0,'DefaultAxesFontName', 'Times', 'DefaultTextFontName', 'Times')
set(gca,'FontSize',16)
plot(t,-dist*r2d,'r:',t,dcap*r2d,'k-');grid;
xlabel('Time (s)','fontsize', 16);
ylabel('Uncertainty and its Estimate (deg/s^{3})','fontsize', 16);
legend('disturbance','estimated disturbance');

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(0,'DefaultAxesFontName', 'Times', 'DefaultTextFontName', 'Times')
set(gca,'FontSize',16)
plot(t,Mach_con,'k-');grid;
xlabel('Time (s)','fontsize', 16);
ylabel('Mach Number','fontsize', 16);

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(0,'DefaultAxesFontName', 'Times', 'DefaultTextFontName', 'Times')
set(gca,'FontSize',16)
plot(t,pitch1*r2d,'k-');grid;
xlabel('Time (s)','fontsize', 16);
ylabel('Pitch Rate (deg/s)','fontsize', 16);



%--------------------------------------------------------------------------
% filename = strcat('ude_observer_varying-mach_x1_kcn=', num2str(kcn), '_kcm=', num2str(kcm), '_.csv');
path = '../';

filename = strcat(path, 'ude_observer_varying-mach_XREF_.csv');
csvwrite(filename, xref);

filename = strcat(path, 'ude_observer_varying-mach_X1_.csv');
csvwrite(filename, x1);

filename = strcat(path, 'ude_observer_varying-mach_X1-CAP_.csv');
csvwrite(filename, x1cap);

filename = strcat(path, 'ude_observer_varying-mach_CONTROL_.csv');
csvwrite(filename, control);

filename = strcat(path, 'ude_observer_varying-mach_MACH_.csv');
csvwrite(filename, Mach_con);

filename = strcat(path, 'ude_observer_varying-mach_DIST_.csv');
csvwrite(filename, -dist);

filename = strcat(path, 'ude_observer_varying-mach_DCAP_.csv');
csvwrite(filename, dcap);

filename = strcat(path, 'ude_observer_varying-mach_PITCH_.csv');
csvwrite(filename, pitch1);

