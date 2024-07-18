figure(1)
plot(out.tout,out.delta_theta,'LineWidth',3)
hold on
plot(out.tout,out.theta_Commanded.*ones(size(out.tout)),'LineWidth',3,'LineStyle','--')
grid on
xlabel("Time")
ylabel("\theta")
legend(["\theta_{actual}","\theta_{Commanded}"])
