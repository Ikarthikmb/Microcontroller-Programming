clc;
clear all;
close all;
d=helix('radius',0.0220,'turns',3,'spacing',0.0350);
show(d);
f=3e8/(4*1);
figure;
pattern(d,f);
figure;
pattern(d,f,0,1:1:360);
figure;
pattern(d,f,1:1:360,0);
figure;
impedance(d,50e6:1e6:100e6);
figure;
returnLoss(d,50e6:1e6:100e6);
[bw,ang]=beamwidth(d,f,0,1:1:360);