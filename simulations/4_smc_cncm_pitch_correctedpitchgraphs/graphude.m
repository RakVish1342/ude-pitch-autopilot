global r2d

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(gca,'FontSize',18,'FontWeight','bold')
plot(t,control*r2d,'k-');grid;
% % axis([0 5 -40 10]);
% % legend('Actual','Estimated');
 xlabel('Time (s)','fontsize', 18);
 ylabel('control surface deflection (deg)','fontsize', 18);

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(gca,'FontSize',18,'FontWeight','bold')
% plot(time,phi,'k-',time,yr,'k-.');grid;
plot(t,x1*r2d,'k-', t,xref*r2d,'r:'); grid;
% axis([0 5 -5 30]);
% legend('Actual','Reference');
xlabel('Time (s)', 'fontsize', 18);
ylabel('angle of attack (deg)', 'fontsize', 18);
legend('actual', 'xref');

%--------------------------------------------------------------------------
% figure;
% set(gcf,'DefaultLineLineWidth',1.5)
% set(gca,'FontSize',18,'FontWeight','bold')
% % plot(time,phi,'k-',time,yr,'k-.');grid;
% plot(t,pitch*r2d,'k-'); grid;
% % axis([0 5 -5 30]);
% % legend('Actual','Reference');
% xlabel('Time (s)', 'fontsize', 18);
% ylabel('pitch rate - q - (deg/s)', 'fontsize', 18);

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(gca,'FontSize',18,'FontWeight','bold')
plot(t,pitch_corrected*r2d,'k-');grid;
xlabel('Time (s)','fontsize', 18);
ylabel('Pitch Rate (deg/s)','fontsize', 18);
