% File to generate Graphs
% load ijc2f;
% global r2d
% %--------------------------------------------------------------------------
global r2d
global kcn kcm poles delt
%--------------------------------------------------------------------------
% time=y2f(1,:);
% phi=y2f(2,:)*r2d;
% phid=y2f(3,:)*r2d;
% % d=y2f(4,:)*r2d;
% u=y2f(4,:)*r2d;
% t=y2f(6,:);
% de=y2f(7,:)*r2d;
% yr=y2f(8,:);
% yr=y2f(7,:);
% phi_cap=y2f(9,:)*r2d;
% phid_cap=y2f(10,:)*r2d;
%--------------------------------------------------------------------------


%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(gca,'FontSize',18,'FontWeight','bold')
plot(t,control*r2d,'k-');grid;
xlabel('Time (s)','fontsize', 18);
ylabel('control surface deflection (deg)','fontsize', 18);
%  print -deps2 con_2

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(gca,'FontSize',18,'FontWeight','bold')
plot(t,x1*r2d,'k-', t,xref*r2d,'r:');grid;
xlabel('Time (s)', 'fontsize', 18);
ylabel('angle of attack (deg)', 'fontsize', 18);
legend('actual', 'xref');
% print -deps2 aoa_2

% %--------------------------------------------------------------------------
% figure;
% set(gcf,'DefaultLineLineWidth',1.5)
% set(gca,'FontSize',18,'FontWeight','bold')
% plot(t,pitch*r2d,'k-');grid;
% xlabel('Time (s)','fontsize', 18);
% ylabel('pitch rate - q - (deg/sec)','fontsize', 18);
% %  print -deps2 con_2

%--------------------------------------------------------------------------
figure;
set(gcf,'DefaultLineLineWidth',1.5)
set(gca,'FontSize',18,'FontWeight','bold')
plot(t,pitch_corrected*r2d,'k-');grid;
xlabel('Time (s)','fontsize', 18);
ylabel('Pitch Rate (deg/s)','fontsize', 18);




