rng(0);
signal = 50*rand(100,1);

window_size = 5;
b = (1/window_size) * ones (1, window_size);
a = 1;
new_signal = filter(b, a, signal);

subplot(1,2,1)
plot(signal);
title("Initial Signal")
xlabel("Time")
ylabel("Amplitude")
legend("Initial signal")
subplot(1,2,2)
plot (new_signal);
title("Filtered Signal")
xlabel("Time")
ylabel("Amplitude")
legend("Filtered Signal")