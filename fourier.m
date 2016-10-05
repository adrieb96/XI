Xdef=fftshift(fft(xdets));
f=-fs/2+fs/L:fs/L:fs/2;

plot(f,abs(Xdef)/max(abs(Xdef)));
axis([-1000 1000 0 1.1])

