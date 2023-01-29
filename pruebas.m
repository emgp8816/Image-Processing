
imagen=zeros(150,200,3);
imagen=double(imagen);
for a=1:20:140
    for capa=1:3
    for x=1:200
    for y=1:150
        b1=80+(a-1+40)/3;
        b2=80-(a-1+40)/3;
       
       if (x<=80+a-1) && ((-1/3)*x+b1<=y && y<=(1/3)*x+b2)
            imagen(y,x,2)=20;
            imagen(y,x,3)=255;
            
        end
    end
    end  
    end
imshow(uint8(imagen))
imagen(:,:,:)=0;

end