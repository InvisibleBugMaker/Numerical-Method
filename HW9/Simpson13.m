function [ II ] = Simpson13( Fun,a,b )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
di=2;
flag=1;
while flag==1;
    even=0;
    odd=0;
    x=linspace(a,b,di+1);
    h=x(2)-a;
    for i=2:2:length(x)-1
        even=even+Fun(x(i));
    end
    for ii=3:2:length(x)-2
        odd=odd+Fun(x(ii));
    end
    I=h/3*(Fun(a)+4*even+2*odd+Fun(b));
    
    even2=0;
    odd2=0;
    di=di*2;
    x=linspace(a,b,di+1);
    h=x(2)-a;
    for i=2:2:length(x)-1
        even2=even2+Fun(x(i));
    end
    for ii=3:2:length(x)-2
        odd2=odd2+Fun(x(ii));
    end
    II=h/3*(Fun(a)+4*even2+2*odd2+Fun(b));
    di=di*2;
    if abs((II-I)/I)<0.0001
        flag=0;
    end
end


end

