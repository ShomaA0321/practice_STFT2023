clear; clc; close all;

f = 440;
fs = 44100;
time = 10;

T1 = linspace(0, time, time*fs+1);
T1 = T1(1:time*fs);
T2 = [0:1/fs:time-1/fs];

signal1 = sin(2*pi*f*T1);
signal2 = sin(2*pi*f*T2);

plot(signal1)

hold on

plot(signal2)
