function  v = fuel( y )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    v=integral(@(y)(576-(24-y).^2).*pi,0,y);
    v=v/231;
end


