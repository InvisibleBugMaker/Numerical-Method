function [ xs ] = SteffensenRoot( Fun,Xest )
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
imax=100; 
tol=10^(-6);
Fxest=Fun(Xest);
i = 0;
while i < imax
    lastX=Xest;
    Xest= Xest - Fxest^2/(Fun(Xest+Fxest)-Fxest);
    Fxest=Fun(Xest);
    tole=abs((Xest-lastX)/lastX);
    if tole<tol
        xs=Xest;
        i = imax + 1;
    end
    i = i + 1;
end

end

