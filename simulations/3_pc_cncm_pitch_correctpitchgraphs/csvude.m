global r2d
global kcn kcm

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(gca,'FontSize',18,'FontWeight','bold')
plot(t,control*r2d,'k-');grid;
xlabel('Time (s)','fontsize', 18);
ylabel('control surface deflection (deg)','fontsize', 18);

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(gca,'FontSize',18,'FontWeight','bold')
% plot(t,x1*r2d,'k-', t,xref*r2d,'r:', t,x1cap*r2d,'g-', t,ext_dist*r2d,'--');grid;
plot(t,x1*r2d,'k-', t,xref*r2d,'r:');grid;
xlabel('Time (s)', 'fontsize', 18);
ylabel('angle of attack (deg)', 'fontsize', 18);
% legend('x1-actual', 'xref', 'x1-cap', 'ext_dist');
legend('x1-actual', 'xref');

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(gca,'FontSize',18,'FontWeight','bold')
plot(t,pitch_corrected*r2d,'k-');grid;
xlabel('Time (s)','fontsize', 18);
ylabel('Pitch Rate (deg/s)','fontsize', 18);


% filename = strcat('ude_observer_varying-mach_x1_kcn=', num2str(kcn), '_kcm=', num2str(kcm), '_.csv');
path = '../';

filename = strcat(path, 'pc_cncm_pitch', '_kcn=', num2str(kcn), '_kcm=', num2str(kcm), '_X1_.csv');
csvwrite(filename, x1);

filename = strcat(path, 'pc_cncm_pitch', '_kcn=', num2str(kcn), '_kcm=', num2str(kcm), '_CONTROL_.csv');
csvwrite(filename, control);

filename = strcat(path, 'pc_cncm_pitch', '_kcn=', num2str(kcn), '_kcm=', num2str(kcm), '_PITCH_.csv');
csvwrite(filename, pitch_corrected);
