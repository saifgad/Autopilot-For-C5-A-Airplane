%% Clear Workspace & Close Figures:
clc;
clearvars;
close all;

%% Problem Definition:

y(:,1)=[10; 2; 0; 2*pi/180; 1*pi/180; 0; 20*pi/180; 15*pi/180; 30*pi/180; 2; 4; 7];

F_vect = [8; 5; 4];                         %%N
M_vect = [5; 10; 20];                       %N.m
I_matrix = [1,-2,-1; -2,5,-4 ; -1,-4,0.2];
m = 10;                                     %%kg
t0=0;                                       %% Intitial time
tf=25;                                      %% Final time
n=4000;
dt=(tf-t0)/n;                               %% Time step

%% Time Vector:
t_vec=(0:1:n-1)*dt;

%% Numerical Solution using Runge-Kutta 4th order:
[t_rk4,y_rk4] = RK4_function(@get_states_dot,t_vec,y(:,1));

%% Verification with the ODE45 Matlab Function:
[t_ode45_vec,y_ode45]=ode45(@get_states_dot,t_vec,y(:,1));

%% Receive Simulink Data
output_simulink=sim('Task_2.slx');
%% 
y_ode45=y_ode45';
t_ode45_vec=t_ode45_vec';
%% Plotting 

%% Velocity in X-Direction
% figure(1)
% plot(t_vec,y_rk4(1,:),'linewidth',2)
% title('The Velocity component in x-direction')
% xlabel('Time')
% ylabel('Velocity component in x-direction')
% hold on
% plot(output_simulink.tout,output_simulink.u,'linewidth',2)
% grid;
% legend(["Runge-Kutta 4th order","Simulink Result"])
% 
% figure(2)
% subplot(2,1,1)
% plot(t_vec,y_rk4(1,:),'linewidth',2)
% title('The Velocity component in x-direction')
% legend("Runge-Kutta 4th order")
% xlabel('Time')
% ylabel('u')
% grid;
% subplot(2,1,2)
% plot(output_simulink.tout,output_simulink.u,'linewidth',2)
% grid;
% title('The Velocity component in x-direction')
% xlabel('Time')
% ylabel('u')
% legend("Simulink Result")
%  %% Velocity in Y-Direction
% figure(3)
% plot(t_vec,y_rk4(2,:),'linewidth',2)
% title('The Velocity component in y-direction')
% xlabel('Time')
% ylabel('Velocity component in y-direction')
% hold on
% plot(output_simulink.tout,output_simulink.v,'linewidth',2)
% grid;
% legend(["Runge-Kutta 4th order","Simulink Result"])
% 
% figure(4)
% subplot(2,1,1)
% plot(t_vec,y_rk4(2,:),'linewidth',2)
% title('The Velocity component in y-direction')
% legend("Runge-Kutta 4th order")
% xlabel('Time')
% ylabel('v')
% grid;
% subplot(2,1,2)
% plot(output_simulink.tout,output_simulink.v,'linewidth',2)
% grid;
% title('The Velocity component in y-direction')
% xlabel('Time')
% ylabel('v')
% legend("Simulink Result")
% %% Velocity in Z-Direction
% figure(5)
% plot(t_vec,y_rk4(3,:),'linewidth',2)
% title('The Velocity component in z-direction')
% xlabel('Time')
% ylabel('Velocity component in z-direction')
% hold on
% plot(output_simulink.tout,output_simulink.w,'linewidth',2)
% grid;
% legend(["Runge-Kutta 4th order","Simulink Result"])
% 
% figure(6)
% subplot(2,1,1)
% plot(t_vec,y_rk4(3,:),'linewidth',2)
% title('The Velocity component in z-direction')
% legend("Runge-Kutta 4th order")
% xlabel('Time')
% ylabel('w')
% grid;
% subplot(2,1,2)
% plot(output_simulink.tout,output_simulink.w,'linewidth',2)
% grid;
% title('The Velocity component in z-direction')
% xlabel('Time')
% ylabel('w')
% legend("Simulink Result")
% %% Angular Rate P
% figure(7)
% plot(t_vec,y_rk4(4,:),'linewidth',2)
% title('The Angular Rate p')
% xlabel('Time')
% ylabel('The Angular Rate p')
% hold on
% plot(output_simulink.tout,output_simulink.p,'linewidth',2)
% grid;
% legend(["Runge-Kutta 4th order","Simulink Result"])
% 
% figure(8)
% subplot(2,1,1)
% plot(t_vec,y_rk4(4,:),'linewidth',2)
% title('The Angular Rate p')
% legend("Runge-Kutta 4th order")
% xlabel('Time')
% ylabel('p')
% grid;
% subplot(2,1,2)
% plot(output_simulink.tout,output_simulink.p,'linewidth',2)
% grid;
% title('The Angular Rate p')
% xlabel('Time')
% ylabel('p')
% legend("Simulink Result")
%  %% Angular Rate q 
% figure(9)
% plot(t_vec,y_rk4(5,:),'linewidth',2)
% title('The Angular Rate q')
% xlabel('Time')
% ylabel('The Angular Rate q')
% hold on
% plot(output_simulink.tout,output_simulink.q,'linewidth',2)
% grid;
% legend(["Runge-Kutta 4th order","Simulink Result"])
% 
% figure(10)
% subplot(2,1,1)
% plot(t_vec,y_rk4(5,:),'linewidth',2)
% title('The Angular Rate q')
% legend("Runge-Kutta 4th order")
% xlabel('Time')
% ylabel('q')
% grid;
% subplot(2,1,2)
% plot(output_simulink.tout,output_simulink.q,'linewidth',2)
% grid;
% title('The Angular Rate q')
% xlabel('Time')
% ylabel('q')
% legend("Simulink Result")
% %% Angular Rate r
% figure(11)
% plot(t_vec,y_rk4(6,:),'linewidth',2)
% title('The Angular Rate r')
% xlabel('Time')
% ylabel('The Angular Rate r')
% hold on
% plot(output_simulink.tout,output_simulink.r,'linewidth',2)
% grid;
% legend(["Runge-Kutta 4th order","Simulink Result"])
% 
% figure(12)
% subplot(2,1,1)
% plot(t_vec,y_rk4(6,:),'linewidth',2)
% title('The Angular Rate r')
% legend("Runge-Kutta 4th order")
% xlabel('Time')
% ylabel('r')
% grid;
% subplot(2,1,2)
% plot(output_simulink.tout,output_simulink.r,'linewidth',2)
% grid;
% title('The Angular Rate r')
% xlabel('Time')
% ylabel('r')
% legend("Simulink Result")
% %% phi
% figure(13)
% plot(t_vec,y_rk4(7,:),'linewidth',2)
% title('Phi')
% xlabel('Time')
% ylabel('Phi')
% hold on
% plot(output_simulink.tout,output_simulink.phi,'linewidth',2)
% grid;
% legend(["Runge-Kutta 4th order","Simulink Result"])
% 
% figure(14)
% subplot(2,1,1)
% plot(t_vec,y_rk4(7,:),'linewidth',2)
% title('Phi')
% legend("Runge-Kutta 4th order")
% xlabel('Time')
% ylabel('Phi')
% grid;
% subplot(2,1,2)
% plot(output_simulink.tout,output_simulink.phi,'linewidth',2)
% grid;
% title('Phi')
% xlabel('Time')
% ylabel('Phi')
% legend("Simulink Result")
% %% Theta
% figure(15)
% plot(t_vec,y_rk4(8,:),'linewidth',2)
% title('Theta')
% xlabel('Time')
% ylabel('Theta')
% hold on
% plot(output_simulink.tout,output_simulink.theta,'linewidth',2)
% grid;
% legend(["Runge-Kutta 4th order","Simulink Result"])
% 
% figure(16)
% subplot(2,1,1)
% plot(t_vec,y_rk4(8,:),'linewidth',2)
% title('Theta')
% legend("Runge-Kutta 4th order")
% xlabel('Time')
% ylabel('Theta')
% grid;
% subplot(2,1,2)
% plot(output_simulink.tout,output_simulink.theta,'linewidth',2)
% grid;
% title('Theta')
% xlabel('Time')
% ylabel('Theta')
% legend("Simulink Result")
% %% epsi
% figure(17)
% plot(t_vec,y_rk4(9,:),'linewidth',2)
% title('epsi')
% xlabel('Time')
% ylabel('epsi')
% hold on
% plot(output_simulink.tout,output_simulink.epsi,'linewidth',2)
% grid;
% legend(["Runge-Kutta 4th order","Simulink Result"])
% 
% figure(18)
% subplot(2,1,1)
% plot(t_vec,y_rk4(9,:),'linewidth',2)
% title('epsi')
% legend("Runge-Kutta 4th order")
% xlabel('Time')
% ylabel('epsi')
% grid;
% subplot(2,1,2)
% plot(output_simulink.tout,output_simulink.epsi,'linewidth',2)
% grid;
% title('epsi')
% xlabel('Time')
% ylabel('epsi')
% legend("Simulink Result")
%  %% Position in X-Direction
% figure(19)
% plot(t_vec,y_rk4(10,:),'linewidth',2)
% title('Position in X-Direction')
% xlabel('Time')
% ylabel('Position in X-Direction')
% hold on
% plot(output_simulink.tout,output_simulink.x,'linewidth',2)
% grid;
% legend(["Runge-Kutta 4th order","Simulink Result"])
% 
% figure(20)
% subplot(2,1,1)
% plot(t_vec,y_rk4(10,:),'linewidth',2)
% title('Position in X-Direction')
% legend("Runge-Kutta 4th order")
% xlabel('Time')
% ylabel('X')
% grid;
% subplot(2,1,2)
% plot(output_simulink.tout,output_simulink.x,'linewidth',2)
% grid;
% title('Position in X-Direction')
% xlabel('Time')
% ylabel('x')
% legend("Simulink Result")
% %% Position in Y-Direction
% figure(21)
% plot(t_vec,y_rk4(11,:),'linewidth',2)
% title('Position in y-Direction')
% xlabel('Time')
% ylabel('Position in y-Direction')
% hold on
% plot(output_simulink.tout,output_simulink.y,'linewidth',2)
% grid;
% legend(["Runge-Kutta 4th order","Simulink Result"])
% 
% figure(22)
% subplot(2,1,1)
% plot(t_vec,y_rk4(11,:),'linewidth',2)
% title('Position in y-Direction')
% legend("Runge-Kutta 4th order")
% xlabel('Time')
% ylabel('Y')
% grid;
% subplot(2,1,2)
% plot(output_simulink.tout,output_simulink.y,'linewidth',2)
% grid;
% title('Position in X-Direction')
% xlabel('Time')
% ylabel('y')
% legend("Simulink Result")
% %% Position in Y-Direction
% figure(23)
% plot(t_vec,y_rk4(12,:),'linewidth',2)
% title('Position in z-Direction')
% xlabel('Time')
% ylabel('Position in z-Direction')
% hold on
% plot(output_simulink.tout,output_simulink.z,'linewidth',2)
% grid;
% legend(["Runge-Kutta 4th order","Simulink Result"])
% 
% figure(24)
% subplot(2,1,1)
% plot(t_vec,y_rk4(12,:),'linewidth',2)
% title('Position in z-Direction')
% legend("Runge-Kutta 4th order")
% xlabel('Time')
% ylabel('Z')
% grid;
% subplot(2,1,2)
% plot(output_simulink.tout,output_simulink.z,'linewidth',2)
% grid;
% title('Position in z-Direction')
% xlabel('Time')
% ylabel('Z')
% legend("Simulink Result")

%% Figures For Presentation

% figure(1)
% subplot(3,1,1)
% y_sim=output_simulink.phi';
% y_sim=y_sim(1,1:n);
% error_sim=(abs(y_rk4(7,:)-y_sim)./y_rk4(7,:))*100;
% plot(t_vec,error_sim)
% title("Error in Angle \phi")
% legend(["Runge-Kutta 4th order","Simulink Result"])
% xlabel('Time')
% ylabel('\phi')
% 
% subplot(3,1,2)
% y_sim=output_simulink.theta';
% y_sim=y_sim(1,1:n);
% error_sim=(abs(y_rk4(8,:)-y_sim)./y_rk4(8,:))*100;
% plot(t_vec,error_sim)
% title("Error in Angle \theta")
% legend(["Runge-Kutta 4th order","Simulink Result"])
% xlabel('Time')
% ylabel('\theta')
% 
% 
% subplot(3,1,3)
% y_sim=output_simulink.epsi';
% y_sim=y_sim(1,1:n);
% error_sim=(abs(y_rk4(9,:)-y_sim)./y_rk4(9,:))*100;
% plot(t_vec,error_sim)
% title("Error in Angle \psi")
% legend(["Runge-Kutta 4th order","Simulink Result"])
% xlabel('Time')
% ylabel('\psi')
% saveas(figure(1),"Error-in-Angles.svg")

%% Error in velocity in x-axis
y_sim=output_simulink.u';
y_sim=y_sim(1,1:n);
error_sim=(abs(y_rk4(1,:)-y_sim)./y_rk4(1,:))*100;

% figure(25)
% plot(t_vec,error_sim)
% legend("Error velocity in x-axis")
% xlabel('Time')
% ylabel('Error velocity in x-axis')
% %% Error in velocity in y-axis
% y_sim=output_simulink.v';
% y_sim=y_sim(1,1:n);
% error_sim=(abs(y_rk4(2,:)-y_sim)./y_rk4(2,:))*100;
% figure(26)
% plot(t_vec,error_sim)
% legend("Error velocity in y-axis")
% xlabel('Time')
% ylabel('Error velocity in y-axis')
% %% Error in velocity in z-axis
% y_sim=output_simulink.w';
% y_sim=y_sim(1,1:n);
% error_sim=(abs(y_rk4(3,:)-y_sim)./y_rk4(3,:))*100;
% figure(27)
% plot(t_vec,error_sim)
% legend("Error velocity in z-axis")
% xlabel('Time')
% ylabel('Error velocity in z-axis')
% %% Error in Angular P
% y_sim=output_simulink.p';
% y_sim=y_sim(1,1:n);
% error_sim=(abs(y_rk4(4,:)-y_sim)./y_rk4(4,:))*100;
% figure(28)
% plot(t_vec,error_sim)
% legend("Error Angular rate p")
% xlabel('Time')
% ylabel('Error Angular rate p')
% %% Error in Angular q
% y_sim=output_simulink.q';
% y_sim=y_sim(1,1:n);
% error_sim=(abs(y_rk4(5,:)-y_sim)./y_rk4(5,:))*100;
% figure(29)
% plot(t_vec,error_sim)
% legend("Error Angular rate q")
% xlabel('Time')
% ylabel('Error Angular rate q')
% %% Error in Angular r
% y_sim=output_simulink.r';
% y_sim=y_sim(1,1:n);
% error_sim=(abs(y_rk4(6,:)-y_sim)./y_rk4(6,:))*100;
% figure(30)
% plot(t_vec,error_sim)
% legend("Error Angular rate r")
% xlabel('Time')
% ylabel('Error Angular rate r')
% %% Error in Angule phi
% y_sim=output_simulink.phi';
% y_sim=y_sim(1,1:n);
% error_sim=(abs(y_rk4(7,:)-y_sim)./y_rk4(7,:))*100;
% figure(31)
% plot(t_vec,error_sim)
% legend("Error Angule phi")
% xlabel('Time')
% ylabel('Error Angule phi')
% %% Error in Angule theta
% y_sim=output_simulink.theta';
% y_sim=y_sim(1,1:n);
% error_sim=(abs(y_rk4(8,:)-y_sim)./y_rk4(8,:))*100;
% figure(32)
% plot(t_vec,error_sim)
% legend("Error Angule Theta")
% xlabel('Time')
% ylabel('Error Angule Theta')
% %% Error in Angule epsi
% y_sim=output_simulink.epsi';
% y_sim=y_sim(1,1:n);
% error_sim=(abs(y_rk4(9,:)-y_sim)./y_rk4(9,:))*100;
% figure(33)
% plot(t_vec,error_sim)
% legend("Error Angule epsi")
% xlabel('Time')
% ylabel('Error Angule epsi')

% %% Error in Position in x-axis
% y_sim=output_simulink.x';
% y_sim=y_sim(1,1:n);
% error_sim=(abs(y_rk4(10,:)-y_sim)./y_rk4(10,:))*100;
% figure(34)
% plot(t_vec,error_sim)
% legend("Error Position in x-axis")
% xlabel('Time')
% ylabel('Error Position in x-axis')
% %% Error in Position in Y-axis
% y_sim=output_simulink.y';
% y_sim=y_sim(1,1:n);
% error_sim=(abs(y_rk4(11,:)-y_sim)./y_rk4(11,:))*100;
% figure(35)
% plot(t_vec,error_sim)
% legend("Error Position in y-axis")
% xlabel('Time')
% ylabel('Error Position in y-axis')
% %% Error in Position in z-axis
% y_sim=output_simulink.z';
% y_sim=y_sim(1,1:n);
% error_sim=(abs(y_rk4(12,:)-y_sim)./y_rk4(12,:))*100;
% figure(36)
% plot(t_vec,error_sim)
% legend("Error Position in z-axis")
% xlabel('Time')
% ylabel('Error Position in z-axis')

%% Saving figures
% saveas(figure(1),"U.svg")
% saveas(figure(2),"u_sep.svg")
% 
% saveas(figure(3),"v.svg")
% saveas(figure(4),"v_sep.svg")
% 
% saveas(figure(5),"w.svg")
% saveas(figure(6),"w_sep.svg")
% 
% saveas(figure(7),"p.svg")
% saveas(figure(8),"p_sep.svg")
% 
% saveas(figure(9),"q.svg")
% saveas(figure(10),"q_sep.svg")
% 
% saveas(figure(11),"r.svg")
% saveas(figure(12),"r_sep.svg")
% 
% saveas(figure(13),"phi.svg")
% saveas(figure(14),"phi_sep.svg")
% 
% saveas(figure(15),"theta.svg")
% saveas(figure(16),"theta_sep.svg")
% 
% saveas(figure(17),"epsi.svg")
% saveas(figure(18),"epsi_sep.svg")
% 
% saveas(figure(19),"x.svg")
% saveas(figure(20),"x_sep.svg")
% 
% saveas(figure(21),"y.svg")
% saveas(figure(22),"y_sep.svg")
% 
% saveas(figure(23),"z.svg")
% saveas(figure(24),"z_sep.svg")

% saveas(figure(25),"u-error.svg")
% saveas(figure(26),"v-error.svg")
% saveas(figure(27),"w-error.svg")
% 
% saveas(figure(28),"p-error.svg")
% saveas(figure(29),"q-error.svg")
% saveas(figure(30),"r-error.svg")
% 
% saveas(figure(31),"phi-error.svg")
% saveas(figure(32),"theta-error.svg")
% saveas(figure(33),"epsi-error.svg")
% 
% saveas(figure(34),"x-error.svg")
% saveas(figure(35),"y-error.svg")
% saveas(figure(36),"z-error.svg")








