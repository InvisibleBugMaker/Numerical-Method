function [ y ] = downsort( x )
%UNTITLED7 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
flag=0;
while flag==0
    count=0;
    for i=1:13
        if x(i+1)>x(i)
            st=x(i);
            x(i)=x(i+1);
            x(i+1)=st;
            count=1;
        end
    end
    if count==0
        flag=1;
    end
end
y=x;
end

