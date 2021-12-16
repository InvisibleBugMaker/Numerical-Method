%Zhaoyi Jiang(.1364) ME Student
%MWF 9:10-10:05
%ME 2850
%HW9
clc
clear

fprintf('Zhaoyi Jiang(.1364)\n')
fprintf('MWF 9:10-10:05')
fprintf('ME 2850\n')
fprintf('HW9\n')


%Chapter 8 P20
fprintf('--------------C8 P20--------------\n')
dfx=DiffAnaly(@(x) exp(x)*log(x),2)
dfx=DiffAnaly(@(x) (x^2+sqrt(x))*cos(x)/sin(x),2)


clear
%Chapter 8 P31
fprintf('--------------C8 P31--------------\n')
t=[0:10:120];
h=[-8 241 1244 2872 5377 8130 11617 15380 19872 25608 31412 38309 44726];
v=diff(h)./diff(t)
v(13)=0;
a=diff(v)./diff(t)
a(13)=0;
subplot(3,1,1);
plot(t,h);
subplot(3,1,2);
plot(t,v);
subplot(3,1,3);
plot(t,a);


clear
%Chapter 9 P19
fprintf('--------------C9 P19--------------\n')
y=[0 0.3 0.5 1 1.5 2 2.5 3 4 5];
v=[0 0.4 0.5 0.56 0.6 0.63 0.66 0.68 0.71 0.74];
I=IntPointsTrap(y,v);
I=10*I


clear
%Chapter 9 P22
fprintf('--------------C9 P22--------------\n')
I=Simpson13( @(x) (sin(x))^2,0,pi )
I=Simpson13( @(x) 2*x/(1+x^2),0,2.4 )


clear
%Chapter 9 P32
fprintf('--------------C9 P32--------------\n')
r=[0:0.25:2];
v=[38 37.6 36.2 33.6 29.7 24.5 17.8 9.6 0];
I=trapz(r,2.*pi.*v.*r)