%Zhaoyi Jiang(.1364) ME Student
%MWF 9:10-10:05
%ME 2850
%HW7
clc
clear

fprintf('Zhaoyi Jiang(.1364)\n')
fprintf('MWF 9:10-10:05')
fprintf('ME 2850\n')
fprintf('HW7\n')


%Chapter 6 P20
fprintf('--------------C6 P20--------------\n')
x=[-40 -20 0 20 40];
y=[0.0012 0.002 0.0032 0.006 0.0118];
[b,m]=ExpoFit(x,y)

%Chapter 6 P22
fprintf('--------------C6 P22--------------\n')
x=[2:2:30];
y=[9.7 8.1 6.6 5.1 4.4 3.7 2.8 2.4 2.0 1.6 1.4 1.1 0.85 0.69 0.6];
a=QuadFit(x,y)
linex=2:0.1:30;
liney=a(1).*linex.^2+a(2).*linex+a(3);
plot(x,y,'ro',linex,liney,'k')
xlabel('Time(s)');
ylabel('vr(V)');
title('EX6-2 p22');


%Chapter 6 P33
fprintf('--------------C6 P33--------------\n')
x=[12.5 25 37.5 50 62.5 75];
y=[20 59 118 197 299 420];

figure
a=QuadFit(x,y)
linex=12.5:0.1:75;
liney=a(1).*linex.^2+a(2).*linex+a(3);
plot(x,y,'ro',linex,liney,'k')
xlabel('v(mi/h)');
ylabel('d(ft)');
title('QuadFit p33')

figure
b=polyfit(x,y,2)
linex2=12.5:0.1:75;
liney2=b(1).*linex2.^2+b(2).*linex2+b(3);
plot(x,y,'ro',linex2,liney2,'g')
xlabel('v(mi/h)');
ylabel('d(ft)');
title('polyfit p33')


%Chapter 6 P36
fprintf('--------------C6 P36--------------\n')
y=[4.72 12.49 20.03 28.33 37.47 41.43 48.38 55.06 66.77 59.16 54.45 47.21 42.75 32.71 25.43 8.18];
x=[7.18 7.3 7.37 7.42 7.47 7.5 7.53 7.55 7.58 7.56 7.55 7.53 7.51 7.47 7.44 7.28];
figure
[b,m]=ExpoFit(x,y)
linex=7.18:0.01:7.58;
liney=b.*exp(linex.*m);
plot(x,y,'ro',linex,liney,'k');
xlabel('v(volt)');
ylabel('u(ft/s)');
title('ExpoFit p36');



%Chapter 6 P38
fprintf('--------------C6 P38--------------\n')
figure
x=[0.0018 0.0025 0.004 0.007 0.016 0.060 0.25];
y=[530 450 380 300 230 155 115];
[xr,xc]=size(x);
Sx=sum(x.^(-1/2));
Sy=sum(y);
Sxx=sum(x.^(-1));
Sxy=sum(x.^(-1/2).*y);
k=(xc*Sxy-Sx*Sy)/(xc*Sxx-Sx^2)
q0=(Sxx*Sy-Sxy*Sx)/(xc*Sxx-Sx^2)
linex=[0.0018:0.0001:0.25];
liney=q0+k.*linex.^(-1/2);
plot(x,y,'ro',linex,liney,'k');
xlabel('d(mm)');
ylabel('Qy(Mpa)');
title('Hall-Petch p38');
pointHP=q0+k*0.003^(-1/2)

figure
quad=QuadFit(x.^(-1/2),y)
linex=[0.0018:0.0001:0.25];
liney=quad(1)*linex.^(-1)+quad(2)*linex.^(-1/2)+quad(3);
plot(x,y,'ro',linex,liney,'k');
xlabel('d(mm)');
ylabel('Qy(Mpa)');
title('QuadFit p38');
pointQ=quad(1)*0.003.^(-1)+quad(2)*0.003.^(-1/2)+quad(3)


%Chapter 6 P39
fprintf('--------------C6 P39--------------\n')
x=[5000 7500 10000 12500 15000 17500 20000 22500 25000 27500 30000];
y=[3.3 7.5 41.8 51.8 61 101.1 132.9 145.5 171.4 225.8 260.9];
xint=5000:500:30000;
h=interp1(x,y,xint,'spline')
plot(x,y,'ro',xint,h,'k*')
xlabel('T(K)');
ylabel('h(Mj/kg)');
title('Bulitin p39');










