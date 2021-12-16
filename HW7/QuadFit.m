function [ a ] = QuadFit( x,y )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[row,col]=size(y);
Sx=sum(x);
Sx2=sum(x.^2);
Sx3=sum(x.^3);
Sx4=sum(x.^4);
Sy=sum(y);
Sxy=sum(x.*y);
Sx2y=sum(x.^2.*y);
A=[col Sx Sx2 Sy; Sx Sx2 Sx3 Sxy; Sx2 Sx3 Sx4 Sx2y];
A=rref(A);
a(1:3)=[A(3,4) A(2,4) A(1,4)];
end

