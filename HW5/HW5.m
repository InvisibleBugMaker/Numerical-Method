%Zhaoyi Jiang(.1364) ME Student
%MWF 9:10-10:05
%ME 2850
%HW5

clc
clear
fprintf('Zhaoyi Jiang(.1364)\n')
fprintf('MWF 9:10-10:05')
fprintf('ME 2850\n')
fprintf('HW5\n')


%Chapter 3 P16
fprintf('----------------------C3 P16---------------------\n')
[xi]=BisectionRoot(@(x) x-2*exp(-x),0,1)


%Chapter 3 P29
fprintf('----------------------C3 P29---------------------\n')
disp('(a)')
[xi]=BisectionRoot(@(x) 60*tand(x)-60^2*32.2/2/50^2/(cosd(x))^2+6.5,0,90)
disp('(b)')
xii=fzero(@(x) 60*tand(x)-60^2*32.2/2/50^2/(cosd(x))^2+6.5,0)


%Chapter 3 P31
fprintf('----------------------C3 P31---------------------\n')
f=8.85*10^(-12); Q=9.4*10^(-6); q=2.4*10^(-5); R=0.1;
disp('(a)')
[xi]=BisectionRoot(@(z)Q*q*z*(1-z/(z^2+R^2)^0.5)/(2*f)-0.3,0.1,0.2)
disp('(b)')
[xs]=SteffensenRoot(@(z)Q*q*z*(1-z/(z^2+R^2)^0.5)/(2*f)-0.3,0.1)
disp('(c)')
xiii=fzero(@(z) Q*q*z*(1-z/(z^2+R^2)^0.5)/(2*f)-0.3,[0.1,0.2])


