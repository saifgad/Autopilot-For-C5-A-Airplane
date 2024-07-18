figure(1)
subplot(3,1,1)
plot(out.tout,out.phi,LineStyle="-",LineWidth=3,Color="black")
grid on
xlabel("time")
ylabel("phi_{deg}")
legend(["phi_{deg}"])
subplot(3,1,2)
plot(out.tout,out.p,LineStyle="-",LineWidth=3,Color="black")
grid on
xlabel("time")
ylabel("p_{deg}")
legend(["p_{deg}"])
subplot(3,1,3)
plot(out.tout,out.r,LineStyle="-",LineWidth=3,Color="black")
grid on
xlabel("time")
ylabel("r_{deg}")
legend(["r_{deg}"])

figure(2)
subplot(3,1,1)
plot(out.tout,out.beta,LineStyle="-",LineWidth=3,Color="black")
grid on
xlabel("time")
ylabel("beta_{deg}")
legend(["beta_{deg}"])
subplot(3,1,2)
plot(out.tout,out.delta_aileron,LineStyle="-",LineWidth=3,Color="black")
grid on
xlabel("time")
ylabel("\delta_{aileron}_{deg}")
legend(["\delta_{aileron}_{deg}"])
subplot(3,1,3)
plot(out.tout,out.delta_rudder,LineStyle="-",LineWidth=3,Color="black")
grid on
xlabel("time")
ylabel("\delta_{rudder}_{deg}")
legend(["\delta_{rudder}_{deg}"])

figure(3)
% plot(out.tout,out.r,LineStyle="-",LineWidth=3,Color="black")
% grid on
% xlabel("time")
% ylabel("r_{deg}")
% legend(["r_{deg}"])
% hold on
rlocus(LoopTransfer_C)
grid on
xlabel("time")
ylabel("r_{deg}")
hold on
title("SISO TOOL r to u")