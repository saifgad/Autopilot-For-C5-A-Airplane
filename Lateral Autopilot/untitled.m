figure(1)
plot(out.tout,out.phi,LineWidth=3)
hold on 
plot(out.tout,out.phi_command*ones(2001,1),LineWidth=3,LineStyle="--")
grid on 
xlabel("time")
ylabel("\phi")
title('\phi')
legend(["\phi","\phi_{command}"])

figure(2)
plot(out.tout,out.aileron,LineWidth=3)
grid on 
xlabel("time")
ylabel("\delta{aileron}")
title('\delta{aileron}')
legend(["\delta{aileron}"])

figure(3)
subplot(3,1,1)
plot(out.tout,out.beta,LineWidth=3)
grid on 
xlabel("time")
ylabel("\beta")
title('\beta')
legend(["\beta"])
subplot(3,1,2)
plot(out.tout,out.p,LineWidth=3)
grid on 
xlabel("time")
ylabel("p")
title('p')
legend(["p"])
subplot(3,1,3)
plot(out.tout,out.r,LineWidth=3)
grid on 
xlabel("time")
ylabel("r")
title('r')
legend(["r"])
