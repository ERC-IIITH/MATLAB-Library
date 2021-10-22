
// code to generate the sin wave in matlab
clear;
clc;
close;
f=15; %frequency [Hz]
t=(0:1/(f*100):1);
a=4;    %amplitude [V]
phi=0;  %phase
y=a*sin(2*pi*f*t+phi);
plot(t,y)
xlabel('time(s)')
ylabel('amplitude(V)')
