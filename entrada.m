clear all;
close all;

fs=48000;	%Frecuencia de muestreo
Ts=1/fs;	%Periodo de muestreo
f1=440;		%Frecuencia deiferentes ondas
f2=550;
f3=660;

T=1;		%Duracion señal
A=0.1;		%Amplitud

t=Ts:Ts:T;	%Vector eje tiempo
L=length(t) %Longitud

xdet1=A*cos(2*pi*f1*t); %x1(t)
xdet2=A*cos(2*pi*f2*t);
xdet3=A*cos(2*pi*f3*t);

xdets=xdet1+xdet2+xdet3; %Suma ondas

plot(t,xdets);			%Dibujo vector
axis([0 0.1 -0.5 0.5])	%Ajuste ejes
xlabel('Tiempo(s)')		%Etiquetado y titulo
ylabel('Amplitud')
title('Senoidal')

audio = audioplayer(xdets,fs); %"PLAY" /Doesnt work/
play(audio)
