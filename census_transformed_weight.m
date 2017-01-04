function  [ Census_transformed ] = census_transformed_weight(inputImage)

[nr,nc,o]=size(inputImage);
windowSize=3;
Census_transformed=uint8(zeros(nr,nc,o));
C= (windowSize-1)/2;
for channel=1:o
    for j=C+1:1:nc-C
        for i=C+1:1:nr-C
            census = 0;
            for  a=-C:1:C
                for  b=-C:1:C
                    if (~(a==0 && b==0))
                        if (inputImage(i+a,j+b,channel) < inputImage(i,j,channel))
                            census=census+1;
                        end
                    end
                end
            end
            
            Census_transformed(i,j,channel) = census;
        end
    end
end
Census_transformed=Census_transformed/8;



