function [v,q] = matrixmode( x )
x
s=size(x);
a=s(1);
b=s(2);
long=a*b;
shape=reshape(x,1,a*b);
line=sort(shape);
ref=line(1);
v(1)=ref;
qq(1)=1;
index=1;
for i=2:long
    if line(i)==ref
        qq(index)=qq(index)+1;
    else
        ref=line(i);
        index=index+1;
        f(index)=ref;
        qq(index)=1;
    end
end
qq;
f;
q=max(qq);
c=1;
for ii=1:length(qq)
    if q==qq(ii)
        v(c)=f(ii);
        c=c+1;
    end
end