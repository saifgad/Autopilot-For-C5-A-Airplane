close all
figure(1)
plot(out.tout,out.theta(:,1)-rad2deg(theta0*ones(size(out.tout))),"Color","black",LineWidth=3)
hold on
plot(out.tout,out.theta(:,2)-rad2deg(theta0*ones(size(out.tout))),color="red",LineWidth=3,LineStyle="--")
grid on
legend(["\Delta\theta_{Non Linear}","\Delta\theta_{Linear}"])
title("\Delta\theta")
xlabel("time")
ylabel("\Delta\theta")

figure(2)
plot(out.tout,out.theta(:,1),"Color","black",LineWidth=3)
hold on
plot(out.tout,out.theta(:,2),color="red",LineWidth=3,LineStyle="--")
grid on
legend(["\theta_{Non Linear}","\theta_{Linear}"])
title("\theta")
xlabel("time")
ylabel("\theta")

figure(3)
plot(out.tout,out.H(:,1),"Color","black",LineWidth=3)
hold on
plot(out.tout,out.H(:,2),color="red",LineWidth=3,LineStyle="--")
hold on 
plot(out.tout,out.H_Command,color="blue",LineWidth=3,LineStyle="-.")
grid on
legend(["H_{Non Linear}","H_{Linear}","H_{Commanded}"])
title("H")
xlabel("time")
ylabel("H")

figure(4)
plot(out.tout,out.u(:,1)-(u0*ones(size(out.tout))),"Color","black",LineWidth=3)
hold on
plot(out.tout,out.u(:,2)-(u0*ones(size(out.tout))),color="red",LineWidth=3,LineStyle="--")
grid on
legend(["\Delta_u_{Non Linear}","\Delta_u_{Linear}"])
title("\Delta_u")
xlabel("time")
ylabel("\Delta_u")

figure(5)
plot(out.tout,out.u(:,1),"Color","black",LineWidth=3)
hold on
plot(out.tout,out.u(:,2),color="red",LineWidth=3,LineStyle="--")
grid on
legend(["u_{Non Linear}","u_{Linear}"])
title("u")
xlabel("time")
ylabel("u")

figure(6)
plot(out.tout,out.phi(:,1)-rad2deg(phi0*ones(size(out.tout))),"Color","black",LineWidth=3)
hold on
plot(out.tout,out.phi(:,2)-rad2deg(phi0*ones(size(out.tout))),color="red",LineWidth=3,LineStyle="--")
grid on
legend(["\Delta\phi_{Non Linear}","\Delta\phi_{Linear}"])
title("\Delta\phi")
xlabel("time")
ylabel("\Delta\phi")

figure(7)
plot(out.tout,out.phi(:,1),"Color","black",LineWidth=3)
hold on
plot(out.tout,out.phi(:,2),color="red",LineWidth=3,LineStyle="--")
grid on
legend(["\phi_{Non Linear}","\phi_{Linear}"])
title("\phi")
xlabel("time")
ylabel("\phi")

figure(8)
plot(out.tout,out.psi(:,1)-rad2deg(psi0*ones(size(out.tout))),"Color","black",LineWidth=3)
hold on
plot(out.tout,out.psi(:,2)-rad2deg(psi0*ones(size(out.tout))),color="red",LineWidth=3,LineStyle="--")
grid on
legend(["\Delta\psi_{Non Linear}","\Delta\psi_{Linear}"])
title("\Delta\psi")
xlabel("time")
ylabel("\Delta\psi")

figure(9)
plot(out.tout,out.psi(:,1),"Color","black",LineWidth=3)
hold on
plot(out.tout,out.psi(:,2),color="red",LineWidth=3,LineStyle="--")
hold on
plot(out.tout,out.psi_command,color="blue",LineWidth=3,LineStyle="-.")
grid on
legend(["\psi_{Non Linear}","\psi_{Linear}","\psi_{Commanded}"])
title("\psi")
xlabel("time")
ylabel("\psi")

figure(10)
plot(out.tout,out.beta(:,1)-rad2deg(beta_0*ones(size(out.tout))),"Color","black",LineWidth=3)
hold on
plot(out.tout,out.beta(:,2)-rad2deg(beta_0*ones(size(out.tout))),color="red",LineWidth=3,LineStyle="--")
grid on
legend(["\Delta\beta_{Non Linear}","\Delta\beta_{Linear}"])
title("\Delta\beta")
xlabel("time")
ylabel("\Delta\beta")



figure(11)
plot(out.tout,out.delta_elevator(:,1),"Color","black",LineWidth=3)
hold on
plot(out.tout,out.delta_elevator(:,2),color="red",LineWidth=3,LineStyle="--")
grid on
legend(["\delta_{elevator}_{Non Linear}","\delta_{elevator}_{Linear}"])
title("\delta_{elevator}")
xlabel("time")
ylabel("\delta_{elevator}")

figure(12)
plot(out.tout,out.delta_thrust(:,1),"Color","black",LineWidth=3)
hold on
plot(out.tout,out.delta_thrust(:,2),color="red",LineWidth=3,LineStyle="--")
grid on
legend(["\delta_{thrust}_{Non Linear}","\delta_{thrust}_{Linear}"])
title("\delta_{thrust}")
xlabel("time")
ylabel("\delta_{thrust}")

figure(13)
plot(out.tout,out.delta_aileron(:,1),"Color","black",LineWidth=3)
hold on
plot(out.tout,out.delta_aileron(:,2),color="red",LineWidth=3,LineStyle="--")
grid on
legend(["\delta_{aileron}_{Non Linear}","\delta_{aileron}_{Linear}"])
title("\delta_{aileron}")
xlabel("time")
ylabel("\delta_{aileron}")

figure(14)
plot(out.tout,out.delta_rudder(:,1),"Color","black",LineWidth=3)
hold on
plot(out.tout,out.delta_rudder(:,2),color="red",LineWidth=3,LineStyle="--")
grid on
legend(["\delta_{rudder}_{Non Linear}","\delta_{rudder}_{Linear}"])
title("\delta_{rudder}")
xlabel("time")
ylabel("\delta_{rudder}")

figure(15)
plot(out.tout,out.gamma(:,1),"Color","black",LineWidth=3)
hold on
plot(out.tout,out.gamma(:,2),color="red",LineWidth=3,LineStyle="--")
grid on
legend(["\Delta\gamma_{Non Linear}","\Delta\gamma_{Linear}"])
title("\Delta\gamma")
xlabel("time")
ylabel("\Delta\gamma")

