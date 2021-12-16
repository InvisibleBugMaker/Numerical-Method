function [ x ] = GaussJordan( a,b )
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
x=[a,b];
[R,C]=size(x);
flag=1;
while flag==1
    counter=0;
for i=1:R
    if x(i,i)~=0
    x(i,:)=x(i,:)./x(i,i);
    devide=x(i,:);
    x(i,:)=zeros(1,C);
        for j=1:R
        x(j,:)=x(j,:)-x(j,i).*devide; 
        end
    
    x(i,:)=devide;
    else
        counter=counter+1;
    end
end
if counter==0
    flag=0;
end
end
x=x(:,C);

end

