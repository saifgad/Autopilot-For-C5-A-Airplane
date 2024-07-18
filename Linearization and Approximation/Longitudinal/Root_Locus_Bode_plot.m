% % For full mode with elevator (Root Locus) 
% % U Root Locus
% 
% figure(1)
% subplot(2,1,1)
% rlocus(u_de)
% legend("Full Linearized mode")
% title('Root Locus for Full Linearized u with elevator')
% grid on
% subplot(2,1,2)
% rlocus(ul_de)
% legend("Long period mode")
% grid on
% title('Root Locus for Long period u with elevator')
% saveas(figure(1),'u_RL.svg')
% % W Root Locus
% 
% figure(2)
% subplot(2,1,1)
% rlocus(w_de)
% legend("Full Linearized mode")
% title('Root Locus for Full Linearized w with elevator')
% grid on
% subplot(2,1,2)
% rlocus(ws_de)
% legend("Short period mode")
% grid on
% title('Root Locus for Short period w with elevator')
% saveas(figure(2),'w_RL.svg')
% % q Root Locus
% figure(3)
% subplot(2,1,1)
% rlocus(q_de)
% legend("Full Linearized mode")
% title('Root Locus for Full Linearized q with elevator')
% grid on
% subplot(2,1,2)
% rlocus(qs_de)
% legend("Short period mode")
% grid on
% title('Root Locus for Short period q with elevator')
% saveas(figure(3),'q_RL.svg')
% % Theta Root Locus
% figure(4)
% subplot(2,1,1)
% rlocus(theta_de)
% legend("Full Linearized mode")
% title('Root Locus for Full Linearized \theta with elevator')
% grid on
% subplot(2,1,2)
% rlocus(thetal_de)
% legend("Long period mode")
% grid on
% title('Root Locus for Short period \theta with elevator')
% saveas(figure(4),'theta_RL.svg')
% 
% % For full mode with Thrust
% % U with Thrust
% figure(5)
% subplot(2,1,1)
% rlocus(u_dth)
% legend("Full Linearized mode")
% title('Root Locus for Full Linearized u with Thrust')
% grid on
% subplot(2,1,2)
% rlocus(ul_dth)
% legend("Long period mode")
% grid on
% title('Root Locus for Long period u with Thrust')
% saveas(figure(5),'u_RL.svg')
% % W with Thrust
% figure(6)
% subplot(2,1,1)
% rlocus(w_dth)
% legend("Full Linearized mode")
% title('Root Locus for Full Linearized w with Thrust')
% grid on
% subplot(2,1,2)
% rlocus(ws_dth)
% legend("Short period mode")
% grid on
% title('Root Locus for Short period w with Thrust')
% saveas(figure(6),'w_RL.svg')
% % q with Thrust
% figure(7)
% subplot(2,1,1)
% rlocus(q_dth)
% legend("Full Linearized mode")
% title('Root Locus for Full Linearized q with Thrust')
% grid on
% subplot(2,1,2)
% rlocus(qs_dth)
% legend("Short period mode")
% grid on
% title('Root Locus for Short period q with Thrust')
% saveas(figure(7),'q_RL.svg')
% % Theta with Thrust
% figure(8)
% subplot(2,1,1)
% rlocus(theta_dth)
% legend("Full Linearized mode")
% title('Root Locus for Full Linearized \theta with Thrust')
% grid on
% subplot(2,1,2)
% rlocus(thetal_dth)
% legend("Long period mode")
% grid on
% title('Root Locus for Long period \theta with Thrust')
% saveas(figure(8),'theta_RL.svg')

%% For full mode with elevator (Bode) 
%% U Root Locus

figure(1)
title('Bode for u with elevator')
bode(u_de)
grid on
hold on 
bode(ul_de)
legend(["Full Linearized mode","Long period mode"])
grid on
title('Bode for Long period u with elevator')
saveas(figure(1),'ue_Bode.svg')
%% W Root Locus

figure(2)
bode(w_de)
grid on
hold on 
bode(ws_de)
legend(["Full Linearized mode","short period mode"])
grid on
title('Bode for w with elevator')
saveas(figure(2),'we_Bode.svg')
%% q Root Locus
figure(3)
bode(q_de)
grid on
hold on
bode(qs_de)
legend(["Full Linearized mode","Short period mode"])
grid on
title('Bode for q with elevator')
saveas(figure(3),'qe_Bode.svg')
%% Theta Root Locus
figure(4)
bode(theta_de)
grid on
hold on 
bode(thetal_de)
grid on
legend(["Full Linearized mode","Long period mode"])
title('Bode for \theta with elevator')
saveas(figure(4),'thetae_Bode.svg')

%% For full mode with Thrust
%% U with Thrust
figure(5)
bode(u_dth)
grid on
hold on 
bode(ul_dth)
grid on
legend(["Full Linearized mode","Long period mode"])
title('Bode for u with Thrust')
saveas(figure(5),'uth_Bode.svg')
%% W with Thrust
figure(6)
bode(w_dth)
grid on
hold on 
bode(ws_dth)
legend(["Full Linearized mode","Short period mode"])
grid on
title('Bode for w with Thrust')
saveas(figure(6),'wth_Bode.svg')
%% q with Thrust
figure(7)
bode(q_dth)
grid on
hold on 
bode(qs_dth)
legend(["Full Linearized mode","Short period mode"])
grid on
title('Bode for q with Thrust')
saveas(figure(7),'qth_Bode.svg')
%% Theta with Thrust
figure(8)
bode(theta_dth)
grid on
hold on
bode(thetal_dth)
legend(["Full Linearized mode","Long period mode"])
grid on
title('Bode for \theta with Thrust')
saveas(figure(8),'thetath_Bode.svg')

