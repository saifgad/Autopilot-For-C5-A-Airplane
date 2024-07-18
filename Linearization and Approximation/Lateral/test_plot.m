close all
clc

% %% Full Linearized System BODE PLOT
% figure(1)
% subplot(2,1,1)
% bode(V_dr)
% legend("Full Linearized Mode")
% title('Bode for Full Linearized v with Rudder')
% grid on
% 
% subplot(2,1,2)
% bode(P_dr)
% legend("Full Linearized Mode")
% title('Bode for Full Linearized p with Rudder')
% grid on
% 
% saveas(figure(1),'1vdr_pdr.svg')
% 
% figure(2)
% subplot(2,1,1)
% bode(R_dr)
% legend("Full Linearized Mode")
% title('Bode for Full Linearized r with Rudder')
% grid on
% 
% subplot(2,1,2)
% bode(phi_dr)
% legend("Full Linearized Mode")
% title('Bode for Full Linearized phi with Rudder')
% grid on
% 
% saveas(figure(2),'2rdr_phidr.svg')
% 
% 
% figure(3)
% subplot(2,1,1)
% bode(psi_dr)
% legend("Full Linearized Mode")
% title('Bode for Full Linearized psi with Rudder')
% grid on
% 
% subplot(2,1,2)
% bode(V_da)
% legend("Full Linearized Mode")
% title('Bode for Full Linearized v with Aileron')
% grid on
% 
% saveas(figure(3),'3psidr_vda.svg')
% 
% figure(4)
% subplot(2,1,1)
% bode(P_da)
% legend("Full Linearized Mode")
% title('Bode for Full Linearized p with Aileron')
% grid on
% 
% subplot(2,1,2)
% bode(R_da)
% legend("Full Linearized Mode")
% title('Bode for Full Linearized r with Aileron')
% grid on
% 
% saveas(figure(4),'4pda_rda.svg')
% 
% 
% figure(5)
% subplot(2,1,1)
% bode(phi_da)
% legend("Full Linearized Mode")
% title('Bode for Full Linearized phi with Aileron')
% grid on
% 
% subplot(2,1,2)
% bode(psi_da)
% legend("Full Linearized Mode")
% title('Bode for Full Linearized psi with Aileron')
% grid on
% 
% saveas(figure(5),'5phida_psida.svg')
% 
% 
% %% 1DoF State Space for Roll Mode Approximation
% figure(6)
% bode(sys_Roll)
% legend("1DoF for Roll Mode Approximation")
% title('Bode for 1DoF for Roll Mode p with Aileron')
% grid on
% 
% saveas(figure(6),'6pda.svg')
% 
% %% 2DoF Dutch-Roll Mode Approximation
% figure(7)
% subplot(2,1,1)
% bode(V_dr_DR_2DoF)
% legend("2DoF Dutch-Roll Mode Approximation")
% title('Bode for 2DoF Dutch-Roll Mode v with Rudder')
% grid on
% 
% subplot(2,1,2)
% bode(V_da_DR_2DoF)
% legend("2DoF Dutch-Roll Mode Approximation")
% title('Bode for 2DoF Dutch-Roll Mode v with Aileron')
% grid on
% 
% saveas(figure(7),'7V_dr_DR_2DoF_V_da_DR_2DoF.svg')
% 
% figure(8)
% subplot(2,1,1)
% bode(R_dr_DR_2DoF)
% legend("2DoF Dutch-Roll Mode Approximation")
% title('Bode for 2DoF Dutch-Roll Mode r with Rudder')
% grid on
% 
% subplot(2,1,2)
% bode(R_da_DR_2DoF)
% legend("2DoF Dutch-Roll Mode Approximation")
% title('Bode for 2DoF Dutch-Roll Mode r with Aileron')
% grid on
% 
% saveas(figure(8),'8R_dr_DR_2DoF_R_da_DR_2DoF.svg')
% 
% 
% %% 3DoF Dutch-Roll Mode Approximation
% figure(9)
% subplot(2,1,1)
% bode(V_dr_DR_3DoF)
% legend("3DoF Dutch-Roll Mode Approximation")
% title('Bode for 3DoF Dutch-Roll Mode v with Rudder')
% grid on
% 
% subplot(2,1,2)
% bode(V_da_DR_3DoF)
% legend("3DoF Dutch-Roll Mode Approximation")
% title('Bode for 3DoF Dutch-Roll Mode v with Aileron')
% grid on
% 
% saveas(figure(9),'9V_dr_DR_3DoF_V_da_DR_3DoF.svg')
% 
% figure(10)
% subplot(2,1,1)
% bode(P_dr_DR_3DoF)
% legend("3DoF Dutch-Roll Mode Approximation")
% title('Bode for 3DoF Dutch-Roll Mode p with Rudder')
% grid on
% 
% subplot(2,1,2)
% bode(P_da_DR_3DoF)
% legend("3DoF Dutch-Roll Mode Approximation")
% title('Bode for 3DoF Dutch-Roll Mode p with Aileron')
% grid on
% 
% saveas(figure(10),'10P_dr_DR_3DoF_P_da_DR_3DoF.svg')
% 
% figure(11)
% subplot(2,1,1)
% bode(R_dr_DR_3DoF)
% legend("3DoF Dutch-Roll Mode Approximation")
% title('Bode for 3DoF Dutch-Roll Mode r with Rudder')
% grid on
% 
% subplot(2,1,2)
% bode(R_da_DR_3DoF)
% legend("3DoF Dutch-Roll Mode Approximation")
% title('Bode for 3DoF Dutch-Roll Mode r with Aileron')
% grid on
% 
% saveas(figure(11),'11R_dr_DR_3DoF_R_da_DR_3DoF.svg')
% 
% 
% %% 3DoF Spiral Mode Approximation
% figure(12)
% subplot(2,1,1)
% bode(P_dr_3DoF_Spiral)
% legend("3DoF Spiral Mode Approximation")
% title('Bode for 3DoF Spiral Mode p with Rudder')
% grid on
% 
% subplot(2,1,2)
% bode(R_dr_3DoF_Spiral)
% legend("3DoF Spiral Mode Approximation")
% title('Bode for 3DoF Spiral Mode r with Rudder')
% grid on
% 
% saveas(figure(12),'12P_dr_3DoF_Spiral_R_dr_3DoF_Spiral.svg')
% 
% figure(13)
% bode(phi_dr_3DoF_Spiral)
% legend("3DoF Spiral Mode Approximation")
% title('Bode for 3DoF Spiral Mode phi with Rudder')
% grid on
% 
% saveas(figure(13),'13phi_dr_3DoF_Spiral.svg')
% 
% 
% 





%% Full Linearized System ROOT LOCUS
figure(14)
subplot(2,1,1)
rlocus(V_dr)
legend("Full Linearized Mode")
title('Root Locus for Full Linearized v with Rudder')
grid on
subplot(2,1,2)
rlocus(P_dr)
legend("Full Linearized Mode")
grid on
title('Root Locus for Long period p with Rudder')

saveas(figure(14),'V_dr_P_dr.svg')

figure(15)
subplot(2,1,1)
rlocus(R_dr)
legend("Full Linearized Mode")
title('Root Locus for Full Linearized r with Rudder')
grid on
subplot(2,1,2)
rlocus(phi_dr)
legend("Full Linearized Mode")
grid on
title('Root Locus for Long period phi with Rudder')

saveas(figure(15),'R_dr_phi_dr.svg')

figure(16)
subplot(2,1,1)
rlocus(psi_dr)
legend("Full Linearized Mode")
title('Root Locus for Full Linearized psi with Rudder')
grid on
subplot(2,1,2)
rlocus(V_da)
legend("Full Linearized Mode")
grid on
title('Root Locus for Long period v with Aileron')

saveas(figure(16),'psi_dr_V_da.svg')

figure(17)
subplot(2,1,1)
rlocus(P_da)
legend("Full Linearized Mode")
title('Root Locus for Full Linearized p with Aileron')
grid on
subplot(2,1,2)
rlocus(R_da)
legend("Full Linearized Mode")
grid on
title('Root Locus for Long period r with Aileron')

saveas(figure(17),'P_da_R_da.svg')

figure(18)
subplot(2,1,1)
rlocus(phi_da)
legend("Full Linearized Mode")
title('Root Locus for Full Linearized phi with Aileron')
grid on
subplot(2,1,2)
rlocus(psi_da)
legend("Full Linearized Mode")
grid on
title('Root Locus for Long period psi with Aileron')

saveas(figure(18),'phi_da_psi_da.svg')


%% 1DoF Roll Mode Approximation
figure(19)
rlocus(sys_Roll)
legend("1DoF State Space for Roll Mode")
title('Root Locus for 1DoF Roll Mode phi with Aileron')
grid on

saveas(figure(19),'phi_da_1DoF.svg')


%% 2DoF Dutch-Roll Mode Approximation
figure(20)
subplot(2,1,1)
rlocus(V_dr_DR_2DoF)
legend("2DoF Dutch-Roll Mode")
title('Root Locus for 2DoF Dutch-Roll v with Rudder')
grid on
subplot(2,1,2)
rlocus(V_da_DR_2DoF)
legend("2DoF Dutch-Roll Mode")
grid on
title('Root Locus for 2DoF Dutch-Roll v with Aileron')

saveas(figure(20),'V_dr_DR_2DoF_V_da_DR_2DoF.svg')

figure(21)
subplot(2,1,1)
rlocus(R_dr_DR_2DoF)
legend("2DoF Dutch-Roll Mode")
title('Root Locus for 2DoF Dutch-Roll r with Rudder')
grid on
subplot(2,1,2)
rlocus(R_da_DR_2DoF)
legend("2DoF Dutch-Roll Mode")
grid on
title('Root Locus for 2DoF Dutch-Roll r with Aileron')

saveas(figure(21),'R_dr_DR_2DoF_R_da_DR_2DoF.svg')


%% 3DoF Dutch-Roll Mode Approximation
figure(22)
subplot(2,1,1)
rlocus(V_dr_DR_3DoF)
legend("3DoF Dutch-Roll Mode Approximation")
title('Root Locus for 3DoF Dutch-Roll Mode v with Rudder')
grid on

subplot(2,1,2)
rlocus(V_da_DR_3DoF)
legend("3DoF Dutch-Roll Mode Approximation")
title('Root Locus for 3DoF Dutch-Roll Mode v with Aileron')
grid on

saveas(figure(22),'V_dr_DR_3DoF_V_da_DR_3DoF.svg')

figure(23)
subplot(2,1,1)
rlocus(P_dr_DR_3DoF)
legend("3DoF Dutch-Roll Mode Approximation")
title('Root Locus for 3DoF Dutch-Roll Mode p with Rudder')
grid on

subplot(2,1,2)
rlocus(P_da_DR_3DoF)
legend("3DoF Dutch-Roll Mode Approximation")
title('Root Locus for 3DoF Dutch-Roll Mode p with Aileron')
grid on

saveas(figure(23),'P_dr_DR_3DoF_P_da_DR_3DoF.svg')

figure(24)
subplot(2,1,1)
rlocus(R_dr_DR_3DoF)
legend("3DoF Dutch-Roll Mode Approximation")
title('Root Locus for 3DoF Dutch-Roll Mode r with Rudder')
grid on

subplot(2,1,2)
rlocus(R_da_DR_3DoF)
legend("3DoF Dutch-Roll Mode Approximation")
title('Root Locus for 3DoF Dutch-Roll Mode r with Aileron')
grid on

saveas(figure(24),'R_dr_DR_3DoF_R_da_DR_3DoF.svg')


%% 3DoF Spiral Mode Approximation
figure(25)
subplot(2,1,1)
rlocus(P_dr_3DoF_Spiral)
legend("3DoF Spiral Mode Approximation")
title('Root Locus for 3DoF Spiral Mode p with Rudder')
grid on

subplot(2,1,2)
rlocus(R_dr_3DoF_Spiral)
legend("3DoF Spiral Mode Approximation")
title('Root Locus for 3DoF Spiral Mode r with Rudder')
grid on

saveas(figure(25),'P_dr_3DoF_Spiral_R_dr_3DoF_Spiral.svg')

figure(26)
rlocus(phi_dr_3DoF_Spiral)
legend("3DoF Spiral Mode Approximation")
title('Root Locus for 3DoF Spiral Mode phi with Rudder')
grid on

saveas(figure(25),'phi_dr_3DoF_Spiral.svg')

