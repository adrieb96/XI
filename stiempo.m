ydet=ifft(fftshift(Ydef));	%Transformada inversa
ydet=real(ydet);

plot(t,ydet);
axis([0 0.1 -0.5 0.5])

pause;
sound(ydet,fs);
