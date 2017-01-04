function [ blending1 ] = Blending1( Y,X)
    [m,n,o]=size(Y);
    [m2,n2,o2]=size(X);
    if(m~=m2||n~=n2||o~=o2)
    end
   
    blending1=weight.*X+(1-weight).*Y;
    
end

