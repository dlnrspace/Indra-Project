clc; clear all; close all;


x=linspace(0,250,251);
z=linspace(0,250,251).*0;
L=250;
R=50;
C=0;

theta=acos(1-2.*x/L);
y=R/sqrt(pi)*sqrt(theta-sin(2.*theta)/2);

x_decal=x+2;
theta_decal=acos(1-2.*x_decal/L);
y_decal=48/sqrt(pi)*sqrt(theta-sin(2.*theta)/2);

plot(x_decal,y_decal);

A = [x; y];

fileID = fopen('nose_cone_coordinate.txt','w');
fprintf(fileID,'%7s %11s\n','X','Y');
fprintf(fileID,'%6.4f %12.4f\n',A);
fclose(fileID);
