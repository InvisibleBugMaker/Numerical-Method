%Zhaoyi Jiang(.1364) ME Student
%MWF 9:10-10:05
%ME 2850
%HW1


fprintf('Zhaoyi Jiang(.1364)\n')
fprintf('MWF 9:10-10:05')
fprintf('ME 2850\n')
fprintf('HW1\n')

%Chapter 1 P9
fprintf('--------------C1 P9--------------')
c=4.6;
d=1.7;
a=c*d^2;
b=(c+a)/(c-d);

A=exp(d-b)+(c+a)^(1/3)-(c*a)^d
B=d/c+(c/b)^2-c^d-a/b

clear
%Chapter 1 P11
fprintf('--------------C1 P11--------------')
A1=(sind(20)+cosd(20))^2
A2=1+2*sind(20)*cosd(20)
fprintf('The first equation is equal')
fprintf('\n')
B1=(1-2*cosd(20)-3*(cosd(20))^2)/(sind(20))^2
B2=(1-3*cosd(20))/(1-cosd(20))
fprintf('The second equation is equal')


clear
%Chapter 1 P19
fprintf('\n--------------C1 P19--------------')
Alph=72;
Bate=43;
Gama=180-72-43;
P=114;
A=[1 1 1;sind(Bate) -sind(Alph) 0;-sind(Gama) 0 sind(Alph)];
B=[114;0;0];
C=A\B;
sideA=C(1,1)
sideB=C(2,1)
sideC=C(3,1)

s=(sideA+sideB+sideC)/2;
radius=(((s-sideA)*(s-sideB)*(s-sideC))/s)^(1/2)

clear
%Chapter 1 P28
fprintf('\n--------------C1 P28--------------')
A=factorial(26)/factorial(26-6)
B=factorial(26+10)/factorial(26-6+10)

clear
%Chapter 1 P32
fprintf('\n--------------C1 P32--------------')
format short;
k=log(0.5)/5730
t=log(77.45/100)/k
format short;
round(t)

clear
%Chapter 2 P16
fprintf('\n--------------C2 P16--------------')
R=[-4:3:8 14:4:30]

clear
%Chapter 2 P23
fprintf('\n--------------C2 P12--------------')
vF=[5:7:61]
vFrev=[61:-7:5]

clear
%Chapter 2 P29
fprintf('\n--------------C2 P29--------------')
F(3:3,3:6)=[8:-2:2]

clear
%Chapter 2 P38
fprintf('\n--------------C2 P38--------------')
N=reshape(0:3:51,6,3)';
Ua=[N(1,1:3) N(3,4:6)]
Ub=[N(:,1);N(:,3);N(:,6)]
Uc=[N(2,2);N(2,3);N(2,4);N(2,5);N(2,5);N(3,5)]

clear
%Chapter 2 P38
fprintf('\n--------------C2 P38--------------')
format short
K=[0.25:0.25:1.75;2:2:14;25:5:55];
Ga=[K(:,2)' K(:,5)';K(2,1:6);K(3,2:7)]
Gb=[K(1:2,3:6)]


