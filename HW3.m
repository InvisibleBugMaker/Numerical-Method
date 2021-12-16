%Zhaoyi Jiang(.1364) ME Student
%MWF 9:10-10:05
%ME 2850
%HW3

clc
clear
fprintf('Zhaoyi Jiang(.1364)\n')
fprintf('MWF 9:10-10:05')
fprintf('ME 2850\n')
fprintf('HW3\n')

clear
clc
%Chapter 5 P3
fprintf('--------------C5 P3--------------\n')
x=linspace(-7,7,1000);
y=3.*cos(1.7.*x).*exp(-0.3.*x)+2.*sin(1.4.*x).*exp(0.3.*x);
figure;
plot(x,y)


clear
clc
%Chapter 5 P4
fprintf('--------------C5 P4--------------\n')
x=linspace(0,10,1000);
y=x.^2.*exp(-x);
dy=2.*x.*exp(-x)-exp(-x).*x.^2;
figure;
plot(x,y,'-',x,dy,'--')
xlabel('The x axis');
ylabel('The y axis');
legend('f(x)','df(x)');


clear
clc
%Chapter 5 P14
fprintf('--------------C5 P14--------------\n')
x1=linspace(-4,-1,1000);
y1=x1+1./(x1.^2-1);
x2=linspace(-1,1,1000);
y2=x2+1./(x2.^2-1);
x3=linspace(1,4,1000);
y3=x3+1./(x3.^2-1);
figure;
plot(x1,y1,x2,y2,x3,y3);
axis([-4 4 -15 15]);


clear
clc
%Chapter 5 P15
fprintf('--------------C5 P15--------------\n')
x1=linspace(0,1,1000);
x2=linspace(-1,0,1000);
y1=(1-x1.^2).^(0.5)+x1.^(2/3);
y2=-(1-x1.^2).^(0.5)+x1.^(2/3);
y3=(1-(-x2).^2).^(0.5)+(-x2).^(2/3);
y4=-(1-(-x2).^2).^(0.5)+(-x2).^(2/3);
figure;
plot(x1,y1,x1,y2,x2,y3,x2,y4);
axis([-1.5 1.5 -1 1.5]);

clear
clc
%Chapter 5 P16
fprintf('--------------C5 P16--------------\n')
t=linspace(-4,4,1000);
x=(3.3-0.3.*t.^2).*cos(t);
y=(3.3-0.4.*t.^2).*sin(t);
figure
plot(x,y,'linewidth',20);


clear
clc
%Chapter 5 P21
fprintf('--------------C5 P21--------------\n')
time=(10:10:70);
height=[9 22 44 63 80 94 97];
figure;
hold on;
plot(time,height,'x')
fplot(@(x)100.8./(1+23.*exp(-0.093.*x)));
hold off;
xlabel('Time(days)');
ylabel('Height(in)');
legend('Table','Function');


clear
clc
%Chapter 5 P28
fprintf('--------------C5 P28--------------\n')
f=linspace(10,50000,10000);
vv=(2.*pi.*f).*2000*0.2*10^(-6)./(1+(2.*pi.*f).^2.*2000.^2.*(0.2.*10.^(-6)).^2).^(0.5);
figure;
semilogx(f,vv);


clear
clc
%Chapter 5 P37
fprintf('--------------C5 P37--------------\n')
x1=linspace(0,8,100);
v1=400-200.*x1;
m1=-100.*x1.^2+400.*x1;

x2=linspace(8,12,100);
v2=linspace(-1200,-1200,100);
m2=-1200.*x2+6400;

x3=linspace(12,20,100);
v3=-250.*x3+5000;
m3=-125.*(x3-12).^2+2000.*x3-32000;
figure
subplot(2,1,1);
plot(x1,v1,x2,v2,x3,v3);
title('Shear Force');
subplot(2,1,2);
plot(x1,m1,x2,m2,x3,m3);
title('Bending Moment');