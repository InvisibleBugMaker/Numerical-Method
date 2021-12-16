%Zhaoyi Jiang(.1364) ME Student
%MWF 9:10-10:05
%ME 2850
%HW4

clc
clear
fprintf('Zhaoyi Jiang(.1364)\n')
fprintf('MWF 9:10-10:05')
fprintf('ME 2850\n')
fprintf('HW4\n')


%Chapter 6 P9
fprintf('--------------C6 P9--------------\n')
vector=input('Input the vector you want, using randi.')
b=length(vector);
ii=1;
for i=1:b
    if vector(i)>0
        ans(ii)=vector(i);
        ii=ii+1;
    end
end
disp('The eliminated vector:')
disp(ans)
e=b-length(ans);
fprintf('%g elements were eliminated.\n',e);

clear
%Chapter 6 P14
fprintf('--------------C6 P14--------------\n')
format long;
i=1;
for n1=0:10
    p1(i)=(-1)^n1/(2*n1+1)^3;
    i=i+1;
end
i=1;
for n2=0:100
    p2(i)=(-1)^n2/(2*n2+1)^3;
    i=i+1;
end
i=1;
for n3=0:1000
    p3(i)=(-1)^n3/(2*n3+1)^3;
    i=i+1;
end
p1=(sum(p1)*32)^(1/3)
p2=(sum(p2)*32)^(1/3)
p3=(sum(p3)*32)^(1/3)


clear
%Chapter 6 P19
fprintf('--------------C6 P19--------------\n')
r=1;
for i=1:9
    for ii=0:9
        for iii=0:9
            if i*ii*iii==6*(i+ii+iii)
                ans(r)=i*100+ii*10+iii;
                r=r+1;
            end
        end
    end
end
sort(ans)

clear
%Chapter 6 P20
fprintf('--------------C6 P20--------------\n')
a=2.*primes(500)+1;
b=primes(1000);
c=ismember(a,b);
ii=1;
for i=1:length(a)
    if c(i)==1
        safeprimes(ii)=a(i);
        ii=ii+1;
    end
end
safeprimes

clear
%Chapter 6 P30
fprintf('--------------C6 P30--------------\n')
format bank
for i=1:3
price=rand*49.99+0.01;
fprintf('You need to pay %.2f dollors\n',price)
number=input('Input the bill you want to pay.(1,5,10,20 or 50)  ');
twenty=0;
ten=0;
five=0;
one=0;
half=0;
quarter=0;
dime=0;
nickel=0;
penny=0;
if number>price
    re=number-price;
    while re>20
        re=re-20;
        twenty=twenty+1;
    end
    while re>10
        re=re-10;
        ten=ten+1;
    end
    while re>5
        re=re-5;
        five=five+1;
    end
    while re>1
        re=re-1;
        one=one+1;
    end
    while re>0.5
        re=re-0.5;
        half=half+1;
    end
    while re>0.25
        re=re-0.25;
        quarter=quarter+1;
    end
    while re>0.1
        re=re-0.1;
        dime=dime+1;
    end
    while re>0.05
        re=re-0.05;
        nickel=nickel+1;
    end
    while re>0.01
        re=re-0.01;
        penny=penny+1;
    end    
    fprintf('The change is\n')
    fprintf('%g twenty bill\n',twenty)
    fprintf('%g ten bill\n',ten)
    fprintf('%g five bill\n',five)
    fprintf('%g one bill\n',one)
    fprintf('%g one bill\n',half)
    fprintf('%g quarter bill\n',quarter)
    fprintf('%g dime bill\n',dime)
    fprintf('%g nickel bill\n',nickel)
    fprintf('%g penny bill\n',penny)
    fprintf('\n')
else
    fprintf('Error\n')
    fprintf('\n')
end
end

clear
% %Chapter 7 P8
% fprintf('--------------C7 P8--------------\n')
x=[0:24];
for i=1:25
    y(i)=fuel(x(i));
end
plot(x,y)
xlabel('R');
ylabel('V');


clear
%Chapter 7 P26
fprintf('--------------C7 P26--------------\n')
for i=1:3
[v q]=matrixmode(randi(10,5,6))
end


clear
%Chapter 7 P27
fprintf('--------------C7 P27--------------\n')
x=randi([-30 30],1,14)
[y]=downsort(x)