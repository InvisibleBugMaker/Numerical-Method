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


%Chapter 1 P1.8
fprintf('--------------C5 P1.8--------------\n')
disp('------------------(a)----------------------')
a=38.8125-floor(38.8125);
flag=1;
n=1;
while flag==1
    if a*2==1
        a1(n)=1;
        flag=0;
    elseif a*2>1
        a1(n)=1;
        a=a*2-1;
    elseif a*2<1
        a1(n)=0;
        a=a*2;
    end
    n=n+1;
end
c=de2bi(38);
for i=1:length(c)
    c1(i)=c(length(c)-i+1);
end
fprintf('answer of (a) is:')
[c1 a1]


disp('-----------------(b)--------------------')
b=38.8125/2^5-1;
flag=1;
n=1;
while flag==1
    if b*2==1
        b1(n)=1;
        flag=0;
    elseif b*2>1
        b1(n)=1;
        b=b*2-1;
    elseif b*2<1
        b1(n)=0;
        b=b*2;
    end
    n=n+1;
end
b1
disp('38.8125=1.001101101*2^101')


disp('----------------------(c)----------------------------')
de2bi(5+1023)
disp('0  10000000100 0011011010000000000000000000000000000000000000000000000000000000');


%Chapter 1 P1.10
fprintf('--------------C5 P1.10--------------\n')
disp('-------------------------(a)---------------------------')
a=0.197265625
flag=1;
n=1;
while flag==1
    if a*2==1
        a1(n)=1;
        flag=0;
    elseif a*2>1
        a1(n)=1;
        a=a*2-1;
    elseif a*2<1
        a1(n)=0;
        a=a*2;
    end
    n=n+1;
end
fprintf('answer of (a) is:')
a1


disp('--------------(b)-------------------------')
b=0.197265625/2^(-3)-1;
flag=1;
n=1;
while flag==1
    if b*2==1
        b1(n)=1;
        flag=0;
    elseif b*2>1
        b1(n)=1;
        b=b*2-1;
    elseif b*2<1
        b1(n)=0;
        b=b*2;
    end
    n=n+1;
end
b1
disp('0.197265625=1.100101*2^-11');


disp('-----------------(c)---------------------')
de2bi(1023-3);
disp('0 01111111100 1001010000000000000000000000000000000000000000000000000000000000')












