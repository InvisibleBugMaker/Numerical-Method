%Zhaoyi Jiang(.1364) ME Student
%MWF 9:10-10:05
%ME 2850
%HW2

clc
clear
fprintf('Zhaoyi Jiang(.1364)\n')
fprintf('MWF 9:10-10:05')
fprintf('ME 2850\n')
fprintf('HW2\n')


clear
%Chapter 3 P3
fprintf('--------------C3 P3--------------\n')
x=[-2:0.5:2];
y=(x+x.*sqrt(x+3)).*(1+2*x.^2)-x.^3

clear
%Chapter 3 P10
fprintf('--------------C3 P10--------------\n')
theta=acosd((sum([3.2.*-4 -6.8.*2 9.*7]))/(sqrt(3.2.^2+6.8.^2+9.^2)*sqrt(4.^2+2.^2+7.^2)))

clear
%Chapter 3 P15
fprintf('--------------C3 P15--------------\n')
x=[0.5 1 1.5 2 2.5];
y=[0.8 1.6 2.4 3.2 4.0];
za=x.^2+2*x.*y
zb=x.*y.*exp(y./x)-(x.^4.*y.^3+8.5).^(1/3)

clear
%Chapter 3 P17
fprintf('--------------C3 P17--------------\n')
roa=[8 5 -4];
rob=[-7 9 6];
roc=[-5 -2 11];
rab=rob-roa;
rac=roc-roa;
area=sqrt(sum(cross(rab,rac).^2))./2

clear
%Chapter 3 P23
fprintf('--------------C3 P23--------------\n')
format long 
a=[1:1:5];
ansa=sum((a.^2)./2.^a)
b=[1:1:15];
ansb=sum((b.^2)./2.^b)
c=[1:1:30];
ansc=sum((c.^2)./2.^c)

clear
%Chapter 4 P1
%5fprintf('--------------C4 P1--------------\n')
%w=input('Input the weight in pound  ');
%h=input('Input the height in inch  ');
%BMI=703*w/h^2;
%fprintf('The BMI is %3.1f\n',BMI)

clear
%Chapter 4 P10
fprintf('--------------C4 P10--------------\n')
format bank;
a=[50:0.1:200];
length=a+2*sqrt((210-a).^2+6400);
Ans=min(length)

clear
%Chapter 4 P29
fprintf('--------------C4 P29--------------\n')
format short;
temp=[80:2:94];
humi=[50:5:75];
for x=1:8
    for y=1:6
        R=humi(y);
        T=temp(x);
        ans=-42.379+2.04901523*T+10.14333127*R-0.22475541*T*R-6.83783*10^-3*T^2-5.481717*10^-2*R^2+1.22874*10^-3*T^2*R+8.5282*10^-4*T*R^2-1.99*10^-6*T^2*R^2;
        Ar(y,x+1)=round(ans);
    end
end
Ar(:,1)=humi;
fprintf('                           Temperature(F)              \n')
fprintf('      ')
disp(temp)
fprintf('Relative\n')
fprintf('humidity\n')
fprintf('(Percentage)\n')
disp(Ar)






