Xdef=fftshift(fft(xdets));	%Transformada de fourier de xdet
f=-fs/2+fs/L:fs/L:fs/2;		%Eje de frecuencias

plot(f,abs(Xdef)/max(abs(Xdef)));	%Modulo Xdef
axis([-1000 1000 0 1.1])
