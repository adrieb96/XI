xdet1=A*cos(2*pi*f1*t);
xdet2=A*cos(2*pi*f2*t);
xdet3=A*cos(2*pi*f3*t);

xdets=xdet1+xdet2+xdet3;

plot(t,xdets);
axis([0 0.1 -0.5 0.5]);
xlabel('Tiempo(s)');
ylabel('Amplitud');
title('Senoidal');

sound(xdets,fs);
