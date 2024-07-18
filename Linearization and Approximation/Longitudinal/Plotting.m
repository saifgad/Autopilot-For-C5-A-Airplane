%% Full Linearized mode , Non linearized Mode , Long Period
%% For 1 degree in Eleveator
% U Graph
figure(1)
subplot(4,1,1)
plot(out.tout,out.states(:,7),"LineWidth",2)
hold on
plot(t_outu1,u1,'LineWidth',2)
hold on
plot(t_outul1,ul1,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Long period Mode"]);
title("U responce due to 1^{o}input")
xlabel('Time')
ylabel('u')
% saveas(figure(1),'U responce due to 1 degeree.svg')
% W Graph
subplot(4,1,2)
plot(out.tout,out.states(:,9),"LineWidth",2)
hold on
plot(t_outw1,w1,'LineWidth',2)
hold on
plot(t_outws1,ws1,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Short period Mode"]);
title("W responce due to 1^{o}input")
xlabel('Time')
ylabel('w')
%saveas(figure(2),'w responce due to 1 degeree.svg')
% q Graph
subplot(4,1,3)
plot(out.tout,out.states(:,11)*180/pi,"LineWidth",2)
hold on
plot(t_outq1,q1,'LineWidth',2)
hold on
plot(t_outqs1,qs1,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Short period Mode"]);
title("q responce due to 1^{o}input")
xlabel('Time')
ylabel('q')
%saveas(figure(3),'q responce due to 1 degeree.svg')
% theta Graph
subplot(4,1,4)
plot(out.tout,out.states(:,5)*180/pi,"LineWidth",2)
hold on
plot(t_outt1,theta1,'LineWidth',2)
hold on
plot(t_outtl1,thetal1,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Long period Mode"]);
title("\theta responce due to 1^{o}input")
xlabel('Time')
ylabel('\theta')
saveas(figure(1),'1 degree.svg')
%% For 5 deg in elevator
% U Graph
figure(2)
subplot(4,1,1)
plot(out.tout,out.states(:,7),"LineWidth",2)
hold on
plot(t_outu5,u5,'LineWidth',2)
hold on
plot(t_outul5,ul5,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Long period Mode"]);
title("U responce due to 5^{o}input")
xlabel('Time')
ylabel('u')
%saveas(figure(5),'u responce due to 5 degeree.svg')
% W Graph
subplot(4,1,2)
plot(out.tout,out.states(:,9),"LineWidth",2)
hold on
plot(t_outw5,w5,'LineWidth',2)
hold on
plot(t_outws5,ws5,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Short period Mode"]);
title("W responce due to 5^{o}input")
xlabel('Time')
ylabel('w')
%saveas(figure(6),'w responce due to 5 degeree.svg')
% q Graph
subplot(4,1,3)
plot(out.tout,out.states(:,11)*180/pi,"LineWidth",2)
hold on
plot(t_outq5,q5,'LineWidth',2)
hold on
plot(t_outqs5,qs5,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Short period Mode"]);
title("q responce due to 5^{o}input")
xlabel('Time')
ylabel('q')
%saveas(figure(7),'q responce due to 5 degeree.svg')
% theta Graph
subplot(4,1,4)
plot(out.tout,out.states(:,5)*180/pi,"LineWidth",2)
hold on
plot(t_outt5,theta5,'LineWidth',2)
hold on
plot(t_outtl5,thetal5,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Long period Mode"]);
title("\theta responce due to 5^{o}input")
xlabel('Time')
ylabel('\theta')
%saveas(figure(8),'theta responce due to 5 degeree.svg')
saveas(figure(2),'2 degree.svg')

%% For 25 deg in elevator
% U Graph
figure(3)
subplot(4,1,1)
plot(out.tout,out.states(:,7),"LineWidth",4)
hold on
plot(t_outu25,u25,'LineWidth',2)
hold on
plot(t_outul25,ul25,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Long period Mode"]);
title("U responce due to 25^{o}input")
xlabel('Time')
ylabel('u')
%saveas(figure(9),'u responce due to 25 degeree.svg')
% W Graph
subplot(4,1,2)
plot(out.tout,out.states(:,9),"LineWidth",4)
hold on
plot(t_outw25,w25,'LineWidth',2)
hold on
plot(t_outws25,ws25,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Short period Mode"]);
title("W responce due to 25^{o}input")
xlabel('Time')
ylabel('w')
%saveas(figure(10),'w responce due to 25 degeree.svg')
% q Graph
subplot(4,1,3)
plot(out.tout,out.states(:,11)*180/pi,"LineWidth",4)
hold on
plot(t_outq25,q25,'LineWidth',2)
hold on
plot(t_outqs25,qs25,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Short period Mode"]);
title("q responce due to 25^{o}input")
xlabel('Time')
ylabel('q')
%saveas(figure(11),'q responce due to 25 degeree.svg')
% theta Graph
subplot(4,1,4)
plot(out.tout,out.states(:,5)*180/pi,"LineWidth",4)
hold on
plot(t_outt25,theta25,'LineWidth',2)
hold on
plot(t_outtl25,thetal25,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Long period Mode"]);
title("\theta responce due to 25^{o}input")
xlabel('Time')
ylabel('\theta')
saveas(figure(3),' 25 degeree.svg')
%% For 2000  in Thrust
% U Graph
figure(4)
subplot(4,1,1)
plot(out.tout,out.states(:,7),"LineWidth",4)
hold on
plot(t_outu2000,u2000,'LineWidth',2)
hold on
plot(t_outul2000,ul2000,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Long period Mode"]);
title("U responce due to 2000 Thrust")
xlabel('Time')
ylabel('u')
%saveas(figure(13),'u responce due to 2000 Thrust.svg')
% W Graph
subplot(4,1,2)
plot(out.tout,out.states(:,9),"LineWidth",4)
hold on
plot(t_outw2000,w2000,'LineWidth',2)
hold on
plot(t_outws2000,ws2000,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Short period Mode"]);
title("W responce due to 2000 Thrust")
xlabel('Time')
ylabel('w')
%saveas(figure(14),'w responce due to 2000 Thrust.svg')
% q Graph
subplot(4,1,3)
plot(out.tout,out.states(:,11)*180/pi,"LineWidth",4)
hold on
plot(t_outq2000,q2000,'LineWidth',2)
hold on
plot(t_outqs2000,qs2000,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Short period Mode"]);
title("q responce due to 2000 Thrust")
xlabel('Time')
ylabel('q')
%saveas(figure(15),'q responce due to 2000 Thrust.svg')
% theta Graph
subplot(4,1,4)
plot(out.tout,out.states(:,5)*180/pi,"LineWidth",4)
hold on
plot(t_outt2000,theta2000,'LineWidth',2)
hold on
plot(t_outtl2000,thetal2000,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Long period Mode"]);
title("\theta responce due to 2000 Thrust")
xlabel('Time')
ylabel('\theta')
saveas(figure(4),' 2000 Thrust.svg')
%% For 10000  in Thrust
% U Graph
figure(5)
subplot(4,1,1)
plot(out.tout,out.states(:,7),"LineWidth",4)
hold on
plot(t_outu10000,u10000,'LineWidth',2)
hold on
plot(t_outul10000,ul10000,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Long period Mode"]);
title("U responce due to 10000 Thrust")
xlabel('Time')
ylabel('u')
%saveas(figure(17),'u responce due to 10000 Thrust.svg')
% W Graph
subplot(4,1,2)
plot(out.tout,out.states(:,9),"LineWidth",4)
hold on
plot(t_outw10000,w10000,'LineWidth',2)
hold on
plot(t_outws10000,ws10000,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Short period Mode"]);
title("W responce due to 10000 Thrust")
xlabel('Time')
ylabel('w')
%saveas(figure(18),'w responce due to 10000 Thrust.svg')
% q Graph
subplot(4,1,3)
plot(out.tout,out.states(:,11)*180/pi,"LineWidth",4)
hold on
plot(t_outq10000,q10000,'LineWidth',2)
hold on
plot(t_outqs10000,qs10000,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Short period Mode"]);
title("q responce due to 10000 Thrust")
xlabel('Time')
ylabel('q')
%saveas(figure(19),'q responce due to 10000 Thrust.svg')
% theta Graph
subplot(4,1,4)
plot(out.tout,out.states(:,5)*180/pi,"LineWidth",4)
hold on
plot(t_outt10000,theta10000,'LineWidth',2)
hold on
plot(t_outtl10000,thetal10000,'LineWidth',2,'LineStyle','-.')
grid on
legend(["Simulink","Full Linearized Mode","Long period Mode"]);
title("\theta responce due to 10000 Thrust")
xlabel('Time')
ylabel('\theta')
saveas(figure(5),' 10000 Thrust.svg')