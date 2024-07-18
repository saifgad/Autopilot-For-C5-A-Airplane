
[y,t] = step(IOTransfer_r2u);
figure
plot(t, squeeze(y), 'LineWidth',2)
grid on
xlabel("time")
ylabel("Amplitude")
title("Step Responce r2u")