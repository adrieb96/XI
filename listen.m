[xdet,fs]=audioread('ejemplo_XI.wav');
Ts=1/fs;	%Perido de muestreo
xdet=xdet';	%Vector columna a vector fila
L=length(xdet);
T=L/fs
t=Ts:Ts:T;
subplot(211)
plot(t,xdet)
axis([0 2 -1 1]);

Xdef=fftshift(fft(xdet));
f=-fs/2+fs/L:fs/L:fs/2;
subplot(212)
plot(f,abs(Xdef)/max(abs(Xdef)));
axis([-1e4 1e4 0 1.1])

sound(xdet,fs);
