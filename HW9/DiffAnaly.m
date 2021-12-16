function [ dfx ] = DiffAnaly( Fun,xi )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
xminus=xi*0.95;
xplus=xi*1.05;
h=abs(xminus-xi);
dfx=(Fun(xplus)-Fun(xminus))/(2*h);

end

