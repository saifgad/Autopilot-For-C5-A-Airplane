close all

figure(1)
plot(out.tout,out.theta_Full_Controller,'LineWidth',3)
grid on;
hold on
plot(out.tout,out.theta_sp_Full_Controller*ones(25001,1),'LineWidth',3,'LineStyle','--')
legend(["\theta Actual","\theta setpoint"])
grid on;
title("\theta figure with 10^{o} input For Full Px4 Controller")
xlabel('Time')
ylabel('\theta')
saveas(figure(1),'theta_10_degree_Longitudinal Full Controll.svg')

% figure(2)
% plot(out.tout,out.delta_elevator,'LineWidth',3)
% grid on;
% legend("\delta Elevator")
% xlabel('Time')
% ylabel('\delta Elevator')
% saveas(figure(2),'delta Elevator_5.svg')

% figure(3)
% plot(out.tout,out.theta_Non_Linear,'LineWidth',3)
% grid on;
% hold on
% plot(out.tout,out.theta_sp_non_Linear*ones(20001,1),'LineWidth',3,'LineStyle','--')
% legend(["\theta Actual","\theta setpoint"])
% grid on;
% title("\theta figure with 5^{o} input")
% xlabel('Time')
% ylabel('\theta')
% saveas(figure(3),'theta_5_degree.svg')

ylabel('\theta')
