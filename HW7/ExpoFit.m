function [ b m ] = ExpoFit( x,y )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[xr,xc]=size(x);
[yr,yc]=size(y);
Sx=sum(x);
Sy=sum(log(y));
Sxx=sum(x.^2);
Sxy=sum(x.*log(y));
m=(xc*Sxy-Sx*Sy)/(xc*Sxx-Sx^2);
b=exp((Sxx*Sy-Sxy*Sx)/(xc*Sxx-Sx^2));

end

