function [ I ] = IntPointsTrap( x,y )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

I=0;
for n=1:length(x)-1
   I=I+0.5*(y(n)+y(n+1))*(x(n+1)-x(n));
end

end

