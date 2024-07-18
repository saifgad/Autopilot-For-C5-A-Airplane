% %% Step input for 1 in Rudder
% V Graph
figure(1)
subplot(5,1,1)
plot(out.tout,out.states(:,8),"LineWidth",2)
hold on
plot(v_time_1,v1,'LineWidth',2)
hold on
plot(v_time_1_DR2D,v1_DR2D,"LineWidth",2)
hold on
plot(v_time_1_DR3D,v1_DR3D,"LineWidth",2)
hold on 
grid on
legend(["Simulink","Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
title("V response due to 1^{o}input")
xlabel('Time')
ylabel('v')
%P
subplot(5,1,2)
plot(out.tout,out.states(:,10)*180/pi,"LineWidth",2)
hold on
plot(p_time_1,dp1,'LineWidth',2)
hold on
plot(p_time_1_DR3D,p1_DR3D,"LineWidth",2)
hold on
plot(p_time_1_S3D,p1_S3D,"LineWidth",2)
grid on
legend(["Simulink","Full Linearized Mode","3DoF Dutch-Roll Mode","3DoF Spiral Mode"]);
title("P response due to 1^{o}input")
xlabel('Time')
ylabel('p')
%R
subplot(5,1,3)
plot(out.tout,out.states(:,12)*180/pi,"LineWidth",2)
hold on
plot(r_time_1,dr1,'LineWidth',2)
hold on
plot(r_time_1_DR2D,r1_DR2D,"LineWidth",2)
hold on
plot(r_time_1_DR3D,r1_DR3D,"LineWidth",2)
hold on
plot(r_time_1_S3D,r1_S3D,"LineWidth",2)
grid on
legend(["Simulink","Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode","3DoF Spiral Mode"]);
title("R response due to 1^{o}input")
xlabel('Time')
ylabel('r')
%Phi 
subplot(5,1,4)
plot(out.tout,out.states(:,4)*180/pi,"LineWidth",2)
hold on
plot(phi_time_1,dphi1,'LineWidth',2)
hold on
plot(phi_time_1_S3D,phi1_S3D,"LineWidth",2)
grid on
legend(["Simulink","Full Linearized Mode","3DoF Spiral Mode"]);
title("Phi response due to 1^{o}input")
xlabel('Time')
ylabel('phi')
%psi
subplot(5,1,5)
plot(out.tout,out.states(:,6)*180/pi,"LineWidth",2)
hold on
plot(psi_time_1,dpsi1,'LineWidth',2)
grid on
legend(["Simulink","Full Linearized Mode"]);
title("Psi response due to 1^{o}input")
xlabel('Time')
ylabel('psi')
%% Step input for 5 in Rudder
% %V Graph
% figure(2)
% subplot(5,1,1)
% plot(out.tout,out.states(:,8),"LineWidth",2)
% hold on
% plot(v_time_5,v5,'LineWidth',2)
% hold on
% plot(v_time_5_DR2D,v5_DR2D,"LineWidth",2)
% hold on
% plot(v_time_5_DR3D,v5_DR3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
% title("V response due to 5^{o}input")
% xlabel('Time')
% ylabel('v')
% %P
% subplot(5,1,2)
% plot(out.tout,out.states(:,10)*180/pi,"LineWidth",2)
% hold on
% plot(p_time_5,dp5,'LineWidth',2)
% hold on
% plot(p_time_5_DR3D,p5_DR3D,"LineWidth",2)
% hold on
% plot(p_time_5_S3D,p5_S3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","3DoF Dutch-Roll Mode","3DoF Spiral Mode"]);
% title("P response due to 5^{o}input")
% xlabel('Time')
% ylabel('p')
% %R
% subplot(5,1,3)
% plot(out.tout,out.states(:,12)*180/pi,"LineWidth",2)
% hold on
% plot(r_time_5,dr5,'LineWidth',2)
% hold on
% plot(r_time_5_DR2D,r5_DR2D,"LineWidth",2)
% hold on
% plot(r_time_5_DR3D,r5_DR3D,"LineWidth",2)
% hold on
% plot(r_time_5_S3D,r5_S3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode","3DoF Spiral Mode"]);
% title("R response due to 5^{o}input")
% xlabel('Time')
% ylabel('r')
% %Phi 
% subplot(5,1,4)
% plot(out.tout,out.states(:,4)*180/pi,"LineWidth",2)
% hold on
% plot(phi_time_5,dphi5,'LineWidth',2)
% hold on
% plot(phi_time_5_S3D,phi5_S3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","3DoF Spiral Mode"]);
% title("Phi response due to 5^{o}input")
% xlabel('Time')
% ylabel('phi')
% %psi
% subplot(5,1,5)
% plot(out.tout,out.states(:,6)*180/pi,"LineWidth",2)
% hold on
% plot(psi_time_5,dpsi5,'LineWidth',2)
% grid on
% legend(["Simulink","Full Linearized Mode"]);
% title("Psi response due to 5^{o}input")
% xlabel('Time')
% ylabel('psi')
% %% Step input for 10 in Rudder
% %V Graph
% figure(3)
% subplot(5,1,1)
% plot(out.tout,out.states(:,8),"LineWidth",2)
% hold on
% plot(v_time_10,v10,'LineWidth',2)
% hold on
% plot(v_time_10_DR2D,v10_DR2D,"LineWidth",2)
% hold on
% plot(v_time_10_DR3D,v10_DR3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
% title("V response due to 10^{o}input")
% xlabel('Time')
% ylabel('v')
% %P
% subplot(5,1,2)
% plot(out.tout,out.states(:,10)*180/pi,"LineWidth",2)
% hold on
% plot(p_time_10,dp10,'LineWidth',2)
% hold on
% plot(p_time_10_DR3D,p10_DR3D,"LineWidth",2)
% hold on
% plot(p_time_10_S3D,p10_S3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","3DoF Dutch-Roll Mode","3DoF Spiral Mode"]);
% title("P response due to 10^{o}input")
% xlabel('Time')
% ylabel('p')
% %R
% subplot(5,1,3)
% plot(out.tout,out.states(:,12)*180/pi,"LineWidth",2)
% hold on
% plot(r_time_10,dr10,'LineWidth',2)
% hold on
% plot(r_time_10_DR2D,r10_DR2D,"LineWidth",2)
% hold on
% plot(r_time_10_DR3D,r10_DR3D,"LineWidth",2)
% hold on
% plot(r_time_10_S3D,r10_S3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode","3DoF Spiral Mode"]);
% title("R response due to 10^{o}input")
% xlabel('Time')
% ylabel('r')
% %Phi 
% subplot(5,1,4)
% plot(out.tout,out.states(:,4)*180/pi,"LineWidth",2)
% hold on
% plot(phi_time_10,dphi10,'LineWidth',2)
% hold on
% plot(phi_time_10_S3D,phi10_S3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","3DoF Spiral Mode"]);
% title("Phi response due to 10^{o}input")
% xlabel('Time')
% ylabel('phi')
% %psi
% subplot(5,1,5)
% plot(out.tout,out.states(:,6)*180/pi,"LineWidth",2)
% hold on
% plot(psi_time_10,dpsi10,'LineWidth',2)
% grid on
% legend(["Simulink","Full Linearized Mode"]);
% title("Psi response due to 10^{o}input")
% xlabel('Time')
% ylabel('psi')
% %% Step input for 25 in Rudder
% %V Graph
% figure(4)
% subplot(5,1,1)
% plot(out.tout,out.states(:,8),"LineWidth",2)
% hold on
% plot(v_time_25,v25,'LineWidth',2)
% hold on
% plot(v_time_25_DR2D,v25_DR2D,"LineWidth",2)
% hold on
% plot(v_time_25_DR3D,v25_DR3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
% title("V response due to 25^{o}input")
% xlabel('Time')
% ylabel('v')
% %P
% subplot(5,1,2)
% plot(out.tout,out.states(:,10)*180/pi,"LineWidth",2)
% hold on
% plot(p_time_25,dp25,'LineWidth',2)
% hold on
% plot(p_time_25_DR3D,p25_DR3D,"LineWidth",2)
% hold on
% plot(p_time_25_S3D,p25_S3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","3DoF Dutch-Roll Mode","3DoF Spiral Mode"]);
% title("P response due to 25^{o}input")
% xlabel('Time')
% ylabel('p')
% %R
% subplot(5,1,3)
% plot(out.tout,out.states(:,12)*180/pi,"LineWidth",2)
% hold on
% plot(r_time_25,dr25,'LineWidth',2)
% hold on
% plot(r_time_25_DR2D,r25_DR2D,"LineWidth",2)
% hold on
% plot(r_time_25_DR3D,r25_DR3D,"LineWidth",2)
% hold on
% plot(r_time_25_S3D,r25_S3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode","3DoF Spiral Mode"]);
% title("R response due to 25^{o}input")
% xlabel('Time')
% ylabel('r')
% %Phi 
% subplot(5,1,4)
% plot(out.tout,out.states(:,4)*180/pi,"LineWidth",2)
% hold on
% plot(phi_time_25,dphi25,'LineWidth',2)
% hold on
% plot(phi_time_25_S3D,phi25_S3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","3DoF Spiral Mode"]);
% title("Phi response due to 25^{o}input")
% xlabel('Time')
% ylabel('phi')
% %psi
% subplot(5,1,5)
% plot(out.tout,out.states(:,6)*180/pi,"LineWidth",2)
% hold on
% plot(psi_time_25,dpsi25,'LineWidth',2)
% grid on
% legend(["Simulink","Full Linearized Mode"]);
% title("Psi response due to 25^{o}input")
% xlabel('Time')
% ylabel('psi')
% %% Step input for 1 in Aileron
% % V Graph
% figure(5)
% subplot(5,1,1)
% plot(out.tout,out.states(:,8),"LineWidth",2)
% hold on
% plot(v_time_1a,v1a,'LineWidth',2)
% hold on 
% plot(v_time_1a_DR2D,v1a_DR2D,"LineWidth",2)
% hold on
% plot(v_time_1a_DR3D,v1a_DR3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
% title("V response due to 1^{o}input")
% xlabel('Time')
% ylabel('v')
% %P
% subplot(5,1,2)
% plot(out.tout,out.states(:,10)*180/pi,"LineWidth",2)
% hold on
% plot(p_time_1a,dp1a,'LineWidth',2)
% hold on
% plot(p_time_1_roll1D,p1_roll1D,'LineWidth',2)
% hold on
% plot(p_time_1a_DR3D,p1a_DR3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","1DoF Rolling Mode Approx","3DoF Dutch-Roll Mode"]);
% title("P response due to 1^{o}input")
% xlabel('Time')
% ylabel('p')
% %R
% subplot(5,1,3)
% plot(out.tout,out.states(:,12)*180/pi,"LineWidth",2)
% hold on
% plot(r_time_1a,dr1a,'LineWidth',2)
% hold on 
% plot(r_time_1a_DR2D,r1a_DR2D,"LineWidth",2)
% hold on
% plot(r_time_1a_DR3D,r1a_DR3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
% title("R response due to 1^{o}input")
% xlabel('Time')
% ylabel('r')
% %Phi 
% subplot(5,1,4)
% plot(out.tout,out.states(:,4)*180/pi,"LineWidth",2)
% hold on
% plot(phi_time_1a,dphi1a,'LineWidth',2)
% grid on
% legend(["Simulink","Full Linearized Mode"]);
% title("Phi response due to 1^{o}input")
% xlabel('Time')
% ylabel('phi')
% %psi
% subplot(5,1,5)
% plot(out.tout,out.states(:,6)*180/pi,"LineWidth",2)
% hold on
% plot(psi_time_1a,dpsi1a,'LineWidth',2)
% grid on
% legend(["Simulink","Full Linearized Mode"]);
% title("Psi response due to 1^{o}input")
% xlabel('Time')
% ylabel('psi')
%% Step input for 5 in Aileron
%V Graph
figure(6)
subplot(5,1,1)
plot(out.tout,out.states(:,8),"LineWidth",2)
hold on
plot(v_time_5a,v5a,'LineWidth',2)
hold on 
plot(v_time_5a_DR2D,v5a_DR2D,"LineWidth",2)
hold on
plot(v_time_5a_DR3D,v5a_DR3D,"LineWidth",2)
grid on
legend(["Simulink","Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
title("V response due to 5^{o}input")
xlabel('Time')
ylabel('v')
%P
subplot(5,1,2)
plot(out.tout,out.states(:,10)*180/pi,"LineWidth",2)
hold on
plot(p_time_5a,dp5a,'LineWidth',2)
hold on
plot(p_time_5_roll1D,p5_roll1D,'LineWidth',2)
hold on
plot(p_time_5a_DR3D,p5a_DR3D,"LineWidth",2)
grid on
legend(["Simulink","Full Linearized Mode","1DoF Rolling Mode Approx","3DoF Dutch-Roll Mode"]);
title("P response due to 5^{o}input")
xlabel('Time')
ylabel('p')
%R
subplot(5,1,3)
plot(out.tout,out.states(:,12)*180/pi,"LineWidth",2)
hold on
plot(r_time_5a,dr5a,'LineWidth',2)
hold on 
plot(r_time_5a_DR2D,r5a_DR2D,"LineWidth",2)
hold on
plot(r_time_5a_DR3D,r5a_DR3D,"LineWidth",2)
grid on
legend(["Simulink","Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
title("R response due to 5^{o}input")
xlabel('Time')
ylabel('r')
%Phi 
subplot(5,1,4)
plot(out.tout,out.states(:,4)*180/pi,"LineWidth",2)
hold on
plot(phi_time_5a,dphi5a,'LineWidth',2)
grid on
legend(["Simulink","Full Linearized Mode"]);
title("Phi response due to 5^{o}input")
xlabel('Time')
ylabel('phi')
%psi
subplot(5,1,5)
plot(out.tout,out.states(:,6)*180/pi,"LineWidth",2)
hold on
plot(psi_time_5a,dpsi5a,'LineWidth',2)
grid on
legend(["Simulink","Full Linearized Mode"]);
title("Psi response due to 5^{o}input")
xlabel('Time')
ylabel('psi')
% %% Step input for 10 in Aileron
% % V Graph
% figure(7)
% subplot(5,1,1)
% plot(out.tout,out.states(:,8),"LineWidth",2)
% hold on
% plot(v_time_10a,v10a,'LineWidth',2)
% hold on 
% plot(v_time_10a_DR2D,v10a_DR2D,"LineWidth",2)
% hold on
% plot(v_time_10a_DR3D,v10a_DR3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
% title("V response due to 10^{o}input")
% xlabel('Time')
% ylabel('v')
% %P
% subplot(5,1,2)
% plot(out.tout,out.states(:,10)*180/pi,"LineWidth",2)
% hold on
% plot(p_time_10a,dp10a,'LineWidth',2)
% hold on
% plot(p_time_10_roll1D,p10_roll1D,'LineWidth',2)
% hold on
% plot(p_time_10a_DR3D,p10a_DR3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","1DoF Rolling Mode Approx","3DoF Dutch-Roll Mode"]);
% title("P response due to 10^{o}input")
% xlabel('Time')
% ylabel('p')
% %R
% subplot(5,1,3)
% plot(out.tout,out.states(:,12)*180/pi,"LineWidth",2)
% hold on
% plot(r_time_10a,dr10a,'LineWidth',2)
% hold on 
% plot(r_time_10a_DR2D,r10a_DR2D,"LineWidth",2)
% hold on
% plot(r_time_10a_DR3D,r10a_DR3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
% title("R response due to 10^{o}input")
% xlabel('Time')
% ylabel('r')
% %Phi 
% subplot(5,1,4)
% plot(out.tout,out.states(:,4)*180/pi,"LineWidth",2)
% hold on
% plot(phi_time_10a,dphi10a,'LineWidth',2)
% grid on
% legend(["Simulink","Full Linearized Mode"]);
% title("Phi response due to 10^{o}input")
% xlabel('Time')
% ylabel('phi')
% %psi
% subplot(5,1,5)
% plot(out.tout,out.states(:,6)*180/pi,"LineWidth",2)
% hold on
% plot(psi_time_10a,dpsi10a,'LineWidth',2)
% grid on
% legend(["Simulink","Full Linearized Mode"]);
% title("Psi response due to 10^{o}input")
% xlabel('Time')
% ylabel('psi')
% %% Step input for 25 in Aileron
% % V Graph
% figure(4)
% subplot(5,1,1)
% plot(out.tout,out.states(:,8),"LineWidth",2)
% hold on
% plot(v_time_25a,v25a,'LineWidth',2)
% hold on 
% plot(v_time_25a_DR2D,v25a_DR2D,"LineWidth",2)
% hold on
% plot(v_time_25a_DR3D,v25a_DR3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
% title("V response due to 25^{o}input")
% xlabel('Time')
% ylabel('v')
% % P
% subplot(5,1,2)
% plot(out.tout,out.states(:,10)*180/pi,"LineWidth",2)
% hold on
% plot(p_time_25a,dp25a,'LineWidth',2)
% hold on
% plot(p_time_25_roll1D,p25_roll1D,'LineWidth',2)
% hold on
% plot(p_time_25a_DR3D,p25a_DR3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","1DoF Rolling Mode Approx","3DoF Dutch-Roll Mode"]);
% title("P response due to 25^{o}input")
% xlabel('Time')
% ylabel('p')
% % R
% subplot(5,1,3)
% plot(out.tout,out.states(:,12)*180/pi,"LineWidth",2)
% hold on
% plot(r_time_25a,dr25a,'LineWidth',2)
% hold on 
% plot(r_time_25a_DR2D,r25a_DR2D,"LineWidth",2)
% hold on
% plot(r_time_25a_DR3D,r25a_DR3D,"LineWidth",2)
% grid on
% legend(["Simulink","Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
% title("R response due to 25^{o}input")
% xlabel('Time')
% ylabel('r')
% % Phi 
% subplot(5,1,4)
% plot(out.tout,out.states(:,4)*180/pi,"LineWidth",2)
% hold on
% plot(phi_time_25a,dphi25a,'LineWidth',2)
% grid on
% legend(["Simulink","Full Linearized Mode"]);
% title("Phi response due to 25^{o}input")
% xlabel('Time')
% ylabel('phi')
% % psi
% subplot(5,1,5)
% plot(out.tout,out.states(:,6)*180/pi,"LineWidth",2)
% hold on
% plot(psi_time_25a,dpsi25a,'LineWidth',2)
% grid on
% legend(["Simulink","Full Linearized Mode"]);
% title("Psi response due to 25^{o}input")
% xlabel('Time')
% ylabel('psi')
