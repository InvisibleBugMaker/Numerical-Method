function [ xi ] = BisectionRoot( Fun,a,b )
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
imax=100000000; tol=0.000001;
Fa=Fun(a); Fb=Fun(b);
if Fa*Fb>0
    disp('Error, starting points do not work')
else
    for i=1:imax
        xi=(a+b)/2;
        tole=abs(Fun((a+b)/2));
        Fxi=Fun(xi);
        if Fxi==0
            fprintf('The root has been found: %11.6f',xi)
            break
        end
        if tole<tol
            break
        end
        if i==imax
            fprintf('Solution cannot be found in %i iterations',imax)
            break
        end
        if Fun(a)*Fxi<0
            b=xi;
        else
            a=xi;
        end
    end
end


end

