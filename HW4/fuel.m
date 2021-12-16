function  v = fuel( y )
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
    v=integral(@(y)(576-(24-y).^2).*pi,0,y);
    v=v/231;
end


