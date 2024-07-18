%% Step Rudder input for 1 in Rudder
figure(1)
subplot(5,1,1)
plot(out.tout,out.states(:,8),"LineWidth",3)
hold on
plot(v_time_1,v1,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"])
title("V response due to 1^{o}Rudder input")
xlabel('Time')
ylabel('v')
grid on
subplot(5,1,2)
plot(out.tout,out.states(:,10)*180/pi,"LineWidth",3)
hold on
plot(p_time_1,dp1,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"])
title("P response due to 1^{o}Rudder input")
xlabel('Time')
ylabel('p')
grid on
subplot(5,1,3)
plot(out.tout,out.states(:,12)*180/pi,"LineWidth",3)
hold on
plot(r_time_1,dr1,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"]);
title("R response due to 1^{o}Rudder input")
xlabel('Time')
ylabel('r')
grid on
subplot(5,1,4)
plot(out.tout,out.states(:,4)*180/pi,"LineWidth",3)
hold on
plot(phi_time_1,dphi1,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"]);
title("Phi response due to 1^{o}Rudder input")
xlabel('Time')
ylabel('phi')
grid on
subplot(5,1,5)
plot(out.tout,out.states(:,6)*180/pi,"LineWidth",3)
hold on
plot(psi_time_1,dpsi1,'LineWidth',3,'LineStyle','--')
grid on
legend(["Simulink","Full Linearized Mode"]);
title("Psi response due to 1^{o}Rudder input")
xlabel('Time')
ylabel('psi')
%% Step Rudder input for 5 in Rudder
figure(2)
subplot(5,1,1)
plot(out.tout,out.states(:,8),"LineWidth",3)
hold on
plot(v_time_5,v5,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"])
title("V response due to 5^{o}Rudder input")
xlabel('Time')
ylabel('v')
grid on
subplot(5,1,2)
plot(out.tout,out.states(:,10)*180/pi,"LineWidth",3)
hold on
plot(p_time_5,dp5,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"])
title("P response due to 5^{o}Rudder input")
xlabel('Time')
ylabel('p')
grid on
subplot(5,1,3)
plot(out.tout,out.states(:,12)*180/pi,"LineWidth",3)
hold on
plot(r_time_5,dr5,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"]);
title("R response due to 5^{o}Rudder input")
xlabel('Time')
ylabel('r')
grid on
subplot(5,1,4)
plot(out.tout,out.states(:,4)*180/pi,"LineWidth",3)
hold on
plot(phi_time_5,dphi5,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"]);
title("Phi response due to 5^{o}Rudder input")
xlabel('Time')
ylabel('phi')
grid on
subplot(5,1,5)
plot(out.tout,out.states(:,6)*180/pi,"LineWidth",3)
hold on
plot(psi_time_5,dpsi5,'LineWidth',3,'LineStyle','--')
grid on
legend(["Simulink","Full Linearized Mode"]);
title("Psi response due to 5^{o}Rudder input")
xlabel('Time')
ylabel('psi')
saveas(figure(2),'5_degree_rudder_Full_Sim.svg')
%% Step Rudder input for 10 in Rudder
figure(3)
subplot(5,1,1)
plot(out.tout,out.states(:,8),"LineWidth",3)
hold on
plot(v_time_10,v10,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"])
title("V response due to 10^{o}Rudder input")
xlabel('Time')
ylabel('v')
grid on
subplot(5,1,2)
plot(out.tout,out.states(:,10)*180/pi,"LineWidth",3)
hold on
plot(p_time_10,dp10,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"])
title("P response due to 10^{o}Rudder input")
xlabel('Time')
ylabel('p')
grid on
subplot(5,1,3)
plot(out.tout,out.states(:,12)*180/pi,"LineWidth",3)
hold on
plot(r_time_10,dr10,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"]);
title("R response due to 10^{o}Rudder input")
xlabel('Time')
ylabel('r')
grid on
subplot(5,1,4)
plot(out.tout,out.states(:,4)*180/pi,"LineWidth",3)
hold on
plot(phi_time_10,dphi10,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"]);
title("Phi response due to 10^{o}Rudder input")
xlabel('Time')
ylabel('phi')
grid on
subplot(5,1,5)
plot(out.tout,out.states(:,6)*180/pi,"LineWidth",3)
hold on
plot(psi_time_10,dpsi10,'LineWidth',3,'LineStyle','--')
grid on
legend(["Simulink","Full Linearized Mode"]);
title("Psi response due to 10^{o}Rudder input")
xlabel('Time')
ylabel('psi')
saveas(figure(3),'10_degree_rudder_Full_Sim.svg')

%% Step Rudder input for 25 in Rudder
figure(4)
subplot(5,1,1)
plot(out.tout,out.states(:,8),"LineWidth",3)
hold on
plot(v_time_25,v25,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"])
title("V response due to 25^{o}Rudder input")
xlabel('Time')
ylabel('v')
grid on
subplot(5,1,2)
plot(out.tout,out.states(:,10)*180/pi,"LineWidth",3)
hold on
plot(p_time_25,dp25,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"])
title("P response due to 25^{o}Rudder input")
xlabel('Time')
ylabel('p')
grid on
subplot(5,1,3)
plot(out.tout,out.states(:,12)*180/pi,"LineWidth",3)
hold on
plot(r_time_25,dr25,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"]);
title("R response due to 25^{o}Rudder input")
xlabel('Time')
ylabel('r')
grid on
subplot(5,1,4)
plot(out.tout,out.states(:,4)*180/pi,"LineWidth",3)
hold on
plot(phi_time_25,dphi25,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"]);
title("Phi response due to 25^{o}Rudder input")
xlabel('Time')
ylabel('phi')
grid on
subplot(5,1,5)
plot(out.tout,out.states(:,6)*180/pi,"LineWidth",3)
hold on
plot(psi_time_25,dpsi25,'LineWidth',3,'LineStyle','--')
grid on
legend(["Simulink","Full Linearized Mode"]);
title("Psi response due to 25^{o}Rudder input")
xlabel('Time')
ylabel('psi')
saveas(figure(4),'25_degree_rudder_Full_Sim.svg')

%% Step Rudder input for 1 in Aileron
figure(5)
subplot(5,1,1)
plot(out.tout,out.states(:,8),"LineWidth",3)
hold on
plot(v_time_1a,v1a,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"])
title("V response due to 1^{o}Aileron input")
xlabel('Time')
ylabel('v')
grid on
subplot(5,1,2)
plot(out.tout,out.states(:,10)*180/pi,"LineWidth",3)
hold on
plot(p_time_1a,dp1a,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"])
title("P response due to 1^{o}Aileron input")
xlabel('Time')
ylabel('p')
grid on
subplot(5,1,3)
plot(out.tout,out.states(:,12)*180/pi,"LineWidth",3)
hold on
plot(r_time_1a,dr1a,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"]);
title("R response due to 1^{o}Aileron input")
xlabel('Time')
ylabel('r')
grid on
subplot(5,1,4)
plot(out.tout,out.states(:,4)*180/pi,"LineWidth",3)
hold on
plot(phi_time_1a,dphi1a,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"]);
title("Phi response due to 1^{o}Aileron input")
xlabel('Time')
ylabel('phi')
grid on
subplot(5,1,5)
plot(out.tout,out.states(:,6)*180/pi,"LineWidth",3)
hold on
plot(psi_time_1a,dpsi1a,'LineWidth',3,'LineStyle','--')
grid on
legend(["Simulink","Full Linearized Mode"]);
title("Psi response due to 1^{o}Aileron input")
xlabel('Time')
ylabel('psi')
saveas(figure(5),'1_degree_Aileron_Full_Sim.svg')
%% Step Aileron input for 5 in Aileron
figure(6)
subplot(5,1,1)
plot(out.tout,out.states(:,8),"LineWidth",3)
hold on
plot(v_time_5a,v5a,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"])
title("V response due to 5^{o}Aileron input")
xlabel('Time')
ylabel('v')
grid on
subplot(5,1,2)
plot(out.tout,out.states(:,10)*180/pi,"LineWidth",3)
hold on
plot(p_time_5a,dp5a,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"])
title("P response due to 5^{o}Aileron input")
xlabel('Time')
ylabel('p')
grid on
subplot(5,1,3)
plot(out.tout,out.states(:,12)*180/pi,"LineWidth",3)
hold on
plot(r_time_5a,dr5a,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"]);
title("R response due to 5^{o}Aileron input")
xlabel('Time')
ylabel('r')
grid on
subplot(5,1,4)
plot(out.tout,out.states(:,4)*180/pi,"LineWidth",3)
hold on
plot(phi_time_5a,dphi5a,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"]);
title("Phi response due to 5^{o}Aileron input")
xlabel('Time')
ylabel('phi')
grid on
subplot(5,1,5)
plot(out.tout,out.states(:,6)*180/pi,"LineWidth",3)
hold on
plot(psi_time_5a,dpsi5a,'LineWidth',3,'LineStyle','--')
grid on
legend(["Simulink","Full Linearized Mode"]);
title("Psi response due to 5^{o}Aileron input")
xlabel('Time')
ylabel('psi')
saveas(figure(6),'5_degree_Aileron_Full_Sim.svg')
%% Step Aileron input for 10 in Aileron
figure(7)
subplot(5,1,1)
plot(out.tout,out.states(:,8),"LineWidth",3)
hold on
plot(v_time_10a,v10a,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"])
title("V response due to 10^{o}Aileron input")
xlabel('Time')
ylabel('v')
grid on
subplot(5,1,2)
plot(out.tout,out.states(:,10)*180/pi,"LineWidth",3)
hold on
plot(p_time_10a,dp10a,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"])
title("P response due to 10^{o}Aileron input")
xlabel('Time')
ylabel('p')
grid on
subplot(5,1,3)
plot(out.tout,out.states(:,12)*180/pi,"LineWidth",3)
hold on
plot(r_time_10a,dr10a,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"]);
title("R response due to 10^{o}Aileron input")
xlabel('Time')
ylabel('r')
grid on
subplot(5,1,4)
plot(out.tout,out.states(:,4)*180/pi,"LineWidth",3)
hold on
plot(phi_time_10a,dphi10a,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"]);
title("Phi response due to 10^{o}Aileron input")
xlabel('Time')
ylabel('phi')
grid on
subplot(5,1,5)
plot(out.tout,out.states(:,6)*180/pi,"LineWidth",3)
hold on
plot(psi_time_10a,dpsi10a,'LineWidth',3,'LineStyle','--')
grid on
legend(["Simulink","Full Linearized Mode"]);
title("Psi response due to 10^{o}Aileron input")
xlabel('Time')
ylabel('psi')
saveas(figure(7),'10_degree_Aileron_Full_Sim.svg')

%% Step Aileron input for 25 in Aileron
figure(8)
subplot(5,1,1)
plot(out.tout,out.states(:,8),"LineWidth",3)
hold on
plot(v_time_25a,v25a,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"])
title("V response due to 25^{o}Aileron input")
xlabel('Time')
ylabel('v')
grid on
subplot(5,1,2)
plot(out.tout,out.states(:,10)*180/pi,"LineWidth",3)
hold on
plot(p_time_25a,dp25a,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"])
title("P response due to 25^{o}Aileron input")
xlabel('Time')
ylabel('p')
grid on
subplot(5,1,3)
plot(out.tout,out.states(:,12)*180/pi,"LineWidth",3)
hold on
plot(r_time_25a,dr25a,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"]);
title("R response due to 25^{o}Aileron input")
xlabel('Time')
ylabel('r')
grid on
subplot(5,1,4)
plot(out.tout,out.states(:,4)*180/pi,"LineWidth",3)
hold on
plot(phi_time_25a,dphi25a,'LineWidth',3,'LineStyle','--')
legend(["Simulink","Full Linearized Mode"]);
title("Phi response due to 25^{o}Aileron input")
xlabel('Time')
ylabel('phi')
grid on
subplot(5,1,5)
plot(out.tout,out.states(:,6)*180/pi,"LineWidth",3)
hold on
plot(psi_time_25a,dpsi25a,'LineWidth',3,'LineStyle','--')
grid on
legend(["Simulink","Full Linearized Mode"]);
title("Psi response due to 25^{o}Aileron input")
xlabel('Time')
ylabel('psi')
saveas(figure(8),'25_degree_Aileron_Full_Sim.svg')
%% Full Linearized with Approximation
%% 1 Degree in Rudder
figure(9)
subplot(4,1,1)
plot(v_time_1,v1,'LineWidth',3)
hold on 
plot(v_time_1_DR2D,v1_DR2D,"LineWidth",3,'LineStyle','--')
hold on
plot(v_time_1_DR3D,v1_DR3D,"LineWidth",3,'LineStyle','-.')
legend(["Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
title("V response due to 1^{o}input Rudder")
xlabel('Time')
ylabel('v')
grid on 
subplot(4,1,2)
plot(p_time_1,dp1,'LineWidth',3)
hold on
plot(p_time_1_DR3D,p1_DR3D,"LineWidth",3,'LineStyle','--')
hold on
plot(p_time_1_S3D,p1_S3D,"LineWidth",3,'LineStyle','-.')
hold on
plot(p_time_1_roll1D,p1_roll1D,'LineWidth',3,'LineStyle','-')
grid on
legend(["Full Linearized Mode","3DoF Dutch-Roll Mode","3DoF Spiral Mode","1DoF Rolling Mode Approx"]);
title("P response due to 1^{o}input Rudder")
xlabel('Time')
ylabel('p')
subplot(4,1,3)
plot(r_time_1,dr1,'LineWidth',3)
hold on
plot(r_time_1_DR2D,r1_DR2D,"LineWidth",3,'LineStyle','--')
hold on
plot(r_time_1_DR3D,r1_DR3D,"LineWidth",3,'LineStyle','-.')
hold on
plot(r_time_1_S3D,r1_S3D,"LineWidth",3,'LineStyle','-')
grid on
legend(["Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode","3DoF Spiral Mode"]);
title("R response due to 1^{o}input Rudder")
xlabel('Time')
ylabel('r')
subplot(4,1,4)
plot(phi_time_1,dphi1,'LineWidth',3)
hold on
plot(phi_time_1_S3D,phi1_S3D,"LineWidth",3,'LineStyle','--')
grid on
legend(["Full Linearized Mode","3DoF Spiral Mode"]);
title("Phi response due to 1^{o}input Rudder")
xlabel('Time')
ylabel('phi')
saveas(figure(9),'1_degree_Rudder_All_Modes.svg')
%% 5 Degree in Rudder
figure(10)
subplot(4,1,1)
plot(v_time_5,v5,'LineWidth',3)
hold on 
plot(v_time_5_DR2D,v5_DR2D,"LineWidth",3,'LineStyle','--')
hold on
plot(v_time_5_DR3D,v5_DR3D,"LineWidth",3,'LineStyle','-.')
legend(["Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
title("V response due to 5^{o}input Rudder")
xlabel('Time')
ylabel('v')
grid on 
subplot(4,1,2)
plot(p_time_5,dp5,'LineWidth',3)
hold on
plot(p_time_5_DR3D,p5_DR3D,"LineWidth",3,'LineStyle','--')
hold on
plot(p_time_5_S3D,p5_S3D,"LineWidth",3,'LineStyle','-.')
hold on
plot(p_time_5_roll1D,p5_roll1D,'LineWidth',3,'LineStyle','-')
grid on
legend(["Full Linearized Mode","3DoF Dutch-Roll Mode","3DoF Spiral Mode","1DoF Rolling Mode Approx"]);
title("P response due to 5^{o}input Rudder")
xlabel('Time')
ylabel('p')
subplot(4,1,3)
plot(r_time_5,dr5,'LineWidth',3)
hold on
plot(r_time_5_DR2D,r5_DR2D,"LineWidth",3,'LineStyle','--')
hold on
plot(r_time_5_DR3D,r5_DR3D,"LineWidth",3,'LineStyle','-.')
hold on
plot(r_time_5_S3D,r5_S3D,"LineWidth",3,'LineStyle','-')
grid on
legend(["Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode","3DoF Spiral Mode"]);
title("R response due to 5^{o}input Rudder")
xlabel('Time')
ylabel('r')
subplot(4,1,4)
plot(phi_time_5,dphi5,'LineWidth',3)
hold on
plot(phi_time_5_S3D,phi5_S3D,"LineWidth",3,'LineStyle','--')
grid on
legend(["Full Linearized Mode","3DoF Spiral Mode"]);
title("Phi response due to 5^{o}input Rudder")
xlabel('Time')
ylabel('phi')
saveas(figure(10),'5_degree_Rudder_All_Modes.svg')
%% 10 Degree in Rudder
figure(11)
subplot(4,1,1)
plot(v_time_10,v10,'LineWidth',3)
hold on 
plot(v_time_10_DR2D,v10_DR2D,"LineWidth",3,'LineStyle','--')
hold on
plot(v_time_10_DR3D,v10_DR3D,"LineWidth",3,'LineStyle','-.')
legend(["Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
title("V response due to 10^{o}input Rudder")
xlabel('Time')
ylabel('v')
grid on 
subplot(4,1,2)
plot(p_time_10,dp10,'LineWidth',3)
hold on
plot(p_time_10_DR3D,p10_DR3D,"LineWidth",3,'LineStyle','--')
hold on
plot(p_time_10_S3D,p10_S3D,"LineWidth",3,'LineStyle','-.')
hold on
plot(p_time_10_roll1D,p10_roll1D,'LineWidth',3,'LineStyle','-')
grid on
legend(["Full Linearized Mode","3DoF Dutch-Roll Mode","3DoF Spiral Mode","1DoF Rolling Mode Approx"]);
title("P response due to 10^{o}input Rudder")
xlabel('Time')
ylabel('p')
subplot(4,1,3)
plot(r_time_10,dr10,'LineWidth',3)
hold on
plot(r_time_10_DR2D,r10_DR2D,"LineWidth",3,'LineStyle','--')
hold on
plot(r_time_10_DR3D,r10_DR3D,"LineWidth",3,'LineStyle','-.')
hold on
plot(r_time_10_S3D,r10_S3D,"LineWidth",3,'LineStyle','-')
grid on
legend(["Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode","3DoF Spiral Mode"]);
title("R response due to 10^{o}input Rudder")
xlabel('Time')
ylabel('r')
subplot(4,1,4)
plot(phi_time_10,dphi10,'LineWidth',3)
hold on
plot(phi_time_10_S3D,phi10_S3D,"LineWidth",3,'LineStyle','--')
grid on
legend(["Full Linearized Mode","3DoF Spiral Mode"]);
title("Phi response due to 10^{o}input Rudder")
xlabel('Time')
ylabel('phi')
saveas(figure(11),'10_degree_Rudder_All_Modes.svg')

%% 25 Degree in Rudder
figure(12)
subplot(4,1,1)
plot(v_time_25,v25,'LineWidth',3)
hold on 
plot(v_time_25_DR2D,v25_DR2D,"LineWidth",3,'LineStyle','--')
hold on
plot(v_time_25_DR3D,v25_DR3D,"LineWidth",3,'LineStyle','-.')
legend(["Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
title("V response due to 25^{o}input Rudder")
xlabel('Time')
ylabel('v')
grid on 
subplot(4,1,2)
plot(p_time_25,dp25,'LineWidth',3)
hold on
plot(p_time_25_DR3D,p25_DR3D,"LineWidth",3,'LineStyle','--')
hold on
plot(p_time_25_S3D,p25_S3D,"LineWidth",3,'LineStyle','-.')
hold on
plot(p_time_25_roll1D,p25_roll1D,'LineWidth',3,'LineStyle','-')
grid on
legend(["Full Linearized Mode","3DoF Dutch-Roll Mode","3DoF Spiral Mode","1DoF Rolling Mode Approx"]);
title("P response due to 25^{o}input Rudder")
xlabel('Time')
ylabel('p')
subplot(4,1,3)
plot(r_time_25,dr25,'LineWidth',3)
hold on
plot(r_time_25_DR2D,r25_DR2D,"LineWidth",3,'LineStyle','--')
hold on
plot(r_time_25_DR3D,r25_DR3D,"LineWidth",3,'LineStyle','-.')
hold on
plot(r_time_25_S3D,r25_S3D,"LineWidth",3,'LineStyle','-')
grid on
legend(["Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode","3DoF Spiral Mode"]);
title("R response due to 25^{o}input Rudder")
xlabel('Time')
ylabel('r')
subplot(4,1,4)
plot(phi_time_25,dphi25,'LineWidth',3)
hold on
plot(phi_time_25_S3D,phi25_S3D,"LineWidth",3,'LineStyle','--')
grid on
legend(["Full Linearized Mode","3DoF Spiral Mode"]);
title("Phi response due to 25^{o}input Rudder")
xlabel('Time')
ylabel('phi')
saveas(figure(12),'25_degree_Rudder_All_Modes.svg')

%% 1 Degree in Aileron
figure(13)
subplot(3,1,1)
plot(v_time_1a,v1a,'LineWidth',3)
hold on 
plot(v_time_1a_DR2D,v1a_DR2D,"LineWidth",3,'LineStyle','--')
hold on
plot(v_time_1a_DR3D,v1a_DR3D,"LineWidth",3,'LineStyle','-.')
legend(["Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
title("V response due to 1^{o}input Aileron ")
xlabel('Time')
ylabel('v')
grid on 
subplot(3,1,2)
plot(p_time_1a,dp1a,'LineWidth',3)
hold on
plot(p_time_1a_DR3D,p1a_DR3D,"LineWidth",3,'LineStyle','--')
hold on
plot(p_time_1_roll1D,p1_roll1D,'LineWidth',3,'LineStyle','-')
grid on
legend(["Full Linearized Mode","3DoF Dutch-Roll Mode","1DoF Rolling Mode Approx"]);
title("P response due to 1^{o}input Aileron")
xlabel('Time')
ylabel('p')
subplot(3,1,3)
plot(r_time_1a,dr1a,'LineWidth',3)
hold on
plot(r_time_1a_DR2D,r1a_DR2D,"LineWidth",3,'LineStyle','--')
hold on
plot(r_time_1a_DR3D,r1a_DR3D,"LineWidth",3,'LineStyle','-.')

grid on
legend(["Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
title("R response due to 1^{o}input Aileron")
xlabel('Time')
ylabel('r')
saveas(figure(13),'1_degree_Aileron_All_Modes.svg')
%% 5 Degree in Aileron
figure(14)
subplot(3,1,1)
plot(v_time_5a,v5a,'LineWidth',3)
hold on 
plot(v_time_5a_DR2D,v5a_DR2D,"LineWidth",3,'LineStyle','--')
hold on
plot(v_time_5a_DR3D,v5a_DR3D,"LineWidth",3,'LineStyle','-.')
legend(["Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
title("V response due to 5^{o}input Aileron")
xlabel('Time')
ylabel('v')
grid on 
subplot(3,1,2)
plot(p_time_5a,dp5a,'LineWidth',3)
hold on
plot(p_time_5a_DR3D,p5a_DR3D,"LineWidth",3,'LineStyle','--')
hold on
plot(p_time_5_roll1D,p5_roll1D,'LineWidth',3,'LineStyle','-')
grid on
legend(["Full Linearized Mode","3DoF Dutch-Roll Mode","1DoF Rolling Mode Approx"]);
title("P response due to 5^{o}input Aileron")
xlabel('Time')
ylabel('p')
subplot(3,1,3)
plot(r_time_5a,dr5a,'LineWidth',3)
hold on
plot(r_time_5a_DR2D,r5a_DR2D,"LineWidth",3,'LineStyle','--')
hold on
plot(r_time_5a_DR3D,r5a_DR3D,"LineWidth",3,'LineStyle','-.')

grid on
legend(["Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
title("R response due to 5^{o}input Aileron")
xlabel('Time')
ylabel('r')
saveas(figure(14),'5_degree_Aileron_All_Modes.svg')
%% 10 Degree in Aileron
figure(15)
subplot(3,1,1)
plot(v_time_10a,v10a,'LineWidth',3)
hold on 
plot(v_time_10a_DR2D,v10a_DR2D,"LineWidth",3,'LineStyle','--')
hold on
plot(v_time_10a_DR3D,v10a_DR3D,"LineWidth",3,'LineStyle','-.')
legend(["Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
title("V response due to 10^{o}input Aileron")
xlabel('Time')
ylabel('v')
grid on 
subplot(3,1,2)
plot(p_time_10a,dp10a,'LineWidth',3)
hold on
plot(p_time_10a_DR3D,p10a_DR3D,"LineWidth",3,'LineStyle','--')
hold on
plot(p_time_10_roll1D,p10_roll1D,'LineWidth',3,'LineStyle','-')
grid on
legend(["Full Linearized Mode","3DoF Dutch-Roll Mode","1DoF Rolling Mode Approx"]);
title("P response due to 10^{o}input Aileron")
xlabel('Time')
ylabel('p')
subplot(3,1,3)
plot(r_time_10a,dr10a,'LineWidth',3)
hold on
plot(r_time_10a_DR2D,r10a_DR2D,"LineWidth",3,'LineStyle','--')
hold on
plot(r_time_10a_DR3D,r10a_DR3D,"LineWidth",3,'LineStyle','-.')

grid on
legend(["Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
title("R response due to 10^{o}input Aileron")
xlabel('Time')
ylabel('r')
saveas(figure(15),'10_degree_Aileron_All_Modes.svg')
%% 25 Degree in Aileron
figure(16)
subplot(3,1,1)
plot(v_time_25a,v25a,'LineWidth',3)
hold on 
plot(v_time_25a_DR2D,v25a_DR2D,"LineWidth",3,'LineStyle','--')
hold on
plot(v_time_25a_DR3D,v25a_DR3D,"LineWidth",3,'LineStyle','-.')
legend(["Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
title("V response due to 25^{o}input Aileron")
xlabel('Time')
ylabel('v')
grid on 
subplot(3,1,2)
plot(p_time_25a,dp25a,'LineWidth',3)
hold on
plot(p_time_25a_DR3D,p25a_DR3D,"LineWidth",3,'LineStyle','--')
hold on
plot(p_time_25_roll1D,p25_roll1D,'LineWidth',3,'LineStyle','-')
grid on
legend(["Full Linearized Mode","3DoF Dutch-Roll Mode","1DoF Rolling Mode Approx"]);
title("P response due to 25^{o}input Aileron")
xlabel('Time')
ylabel('p')
subplot(3,1,3)
plot(r_time_25a,dr25a,'LineWidth',3)
hold on
plot(r_time_25a_DR2D,r25a_DR2D,"LineWidth",3,'LineStyle','--')
hold on
plot(r_time_25a_DR3D,r25a_DR3D,"LineWidth",3,'LineStyle','-.')
grid on
legend(["Full Linearized Mode","2DoF Dutch-Roll Mode","3DoF Dutch-Roll Mode"]);
title("R response due to 25^{o}input Aileron")
xlabel('Time')
ylabel('r')
saveas(figure(16),'25_degree_Aileron_All_Modes.svg')