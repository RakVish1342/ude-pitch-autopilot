global r2d

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
plot(t,x1*r2d,'k-', t,xref*r2d,'r:',t,x1cap*r2d);grid;
xlabel('Time (s)', 'fontsize', 18);
ylabel('angle of attack (deg)', 'fontsize', 18);
legend('x1-actual', 'xref', 'x1-cap', 'ext_dist');

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(gca,'FontSize',18,'FontWeight','bold')
plot(t,-dist*r2d,'k-',t,dcap*r2d,'r:');grid;
xlabel('Time (s)','fontsize', 18);
ylabel('Uncertainty and its estimate (deg/s^{3})','fontsize', 18);
legend('actual','estimated', 'location', 'northwest');

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(gca,'FontSize',18,'FontWeight','bold')
% plot(t,Mach_con,'k-',t,Mach_obs,'r:');grid;
plot(t,Mach_con,'k-');grid;
xlabel('Time (s)','fontsize', 18);
ylabel('Mach','fontsize', 18);
legend('Mach_con','Mach_obs');

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(gca,'FontSize',18,'FontWeight','bold')
plot(t,obs_err*r2d,'k-');grid;
xlabel('Time (s)','fontsize', 18);
ylabel('Observer Error (deg)','fontsize', 18);

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(gca,'FontSize',18,'FontWeight','bold')
plot(t,pitch1*r2d,'k-');grid;
xlabel('Time (s)','fontsize', 18);
ylabel('Pitch Rate (deg/s)','fontsize', 18);
