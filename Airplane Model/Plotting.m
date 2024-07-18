%% Plotting Code
%% Velocity in x-direction
figure(1)
subplot(3,1,1)
plot(out.tout,out.states(:,7),'linewidth',2)
hold on
plot(t_vec,u,'linewidth',2)
grid;
title('u')
legend(["Simulink Result","RK4-Results"])
xlabel('Time')
ylabel('u')
%% Velocity in y-direction

subplot(3,1,2)
plot(out.tout,out.states(:,8),'linewidth',2)
hold on
plot(t_vec,v,'linewidth',2)
grid;
title('v')
legend(["Simulink Result","RK4-Results"])
xlabel('Time')
ylabel('v')
%% Velocity in z-direction

subplot(3,1,3)
plot(out.tout,out.states(:,9),'linewidth',2)
hold on
plot(t_vec,w,'linewidth',2)
grid;
title('w')
legend(["Simulink Result","RK4-Results"])
xlabel('Time')
ylabel('w')
%% Rate p

figure(2)
subplot(3,1,1)

plot(out.tout,out.states(:,10)*180/pi,'linewidth',2)
hold on
plot(t_vec,p*180/pi,'linewidth',2)
grid;
title('p')
legend(["Simulink Result","RK4-Results"])
xlabel('Time')
ylabel('p')
%% Rate q

subplot(3,1,2)
plot(out.tout,out.states(:,11)*180/pi,'linewidth',2)
hold on
plot(t_vec,q*180/pi,'linewidth',2)
grid;
title('q')
legend(["Simulink Result","RK4-Results"])
xlabel('Time')
ylabel('q')
%% Rate r

subplot(3,1,3)
plot(out.tout,out.states(:,12)*180/pi,'linewidth',2)
hold on
plot(t_vec,r*180/pi,'linewidth',2)
grid;
title('r')
legend(["Simulink Result","RK4-Results"])
xlabel('Time')
ylabel('r')
%% Position in x-direction

figure(3)
subplot(3,1,1)

plot(out.tout,out.states(:,1),'linewidth',2)
hold on
plot(t_vec,x_b,'linewidth',2)
grid;
title('x')
legend(["Simulink Result","RK4-Results"])
xlabel('Time')
ylabel('x')
%% Position in y-direction

subplot(3,1,2)
plot(out.tout,out.states(:,2),'linewidth',2)
hold on
plot(t_vec,y_b,'linewidth',2)
grid;
title('y')
legend(["Simulink Result","RK4-Results"])
xlabel('Time')
ylabel('y')
%% Position in z-direction

subplot(3,1,3)
plot(out.tout,out.states(:,3),'linewidth',2)
hold on
plot(t_vec,z_b,'linewidth',2)
grid;
title('z')
legend(["Simulink Result","RK4-Results"])
xlabel('Time')
ylabel('z')
%% Angle Phi

figure(4)
subplot(3,1,1)

plot(out.tout,out.states(:,4)*180/pi,'linewidth',2)
hold on
plot(t_vec,phi*180/pi,'linewidth',2)
grid;
title('\phi')
legend(["Simulink Result","RK4-Results"])
xlabel('Time')
ylabel('\phi')
%% Angle Theta

subplot(3,1,2)
plot(out.tout,out.states(:,5)*180/pi,'linewidth',2)
hold on
plot(t_vec,theta*180/pi,'linewidth',2)
grid;
title('\theta')
legend(["Simulink Result","RK4-Results"])
xlabel('Time')
ylabel('\theta')
%% Angle psi

subplot(3,1,3)
plot(out.tout,out.states(:,6)*180/pi,'linewidth',2)
hold on
plot(t_vec,psi*180/pi,'linewidth',2)
grid;
title('\psi')
legend(["Simulink Result","RK4-Results"])
xlabel('Time')
ylabel('\psi')



% saveas(figure(1),"velocity.svg");
% saveas(figure(2),"rates.svg");
% saveas(figure(3),"position.svg");
% saveas(figure(4),"Angles.svg");
% saveas(figure(5),"AOA.svg");

