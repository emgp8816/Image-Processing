
imagen=zeros(150,260,3);
imagen=double(imagen);
for a=1:20:200
    for x=1:260
    for y=1:150
        b1=80+(a-1+40)/3;
        b2=80-(a-1+40)/3;
        if x<=(55+a-1+sqrt((9)-(y-65)^2))&& x>=(55+a-1-sqrt((9)-(y-65)^2)) && 62<=y && y<=68
            imagen(y,x,1:3)=0;
        elseif (x<=80+a-1) && ((-1/3)*x+b1<=y && y<=(1/3)*x+b2)
            imagen(y,x,2)=20;
            imagen(y,x,3)=255;
        elseif x<=(40+a-1+sqrt((900)-(y-80)^2))&& x>=(40+a-1-sqrt((900)-(y-80)^2)) && 50<=y && y<=110
            imagen(y,x,1:2)=255; 
         elseif x<=(85+a-1+sqrt((25)-(y-80)^2))&& x>=(85+a-1-sqrt((25)-(y-80)^2)) && 75<=y && y<=85
             imagen(y,x,1:2)=255;
         elseif x<=(105+a-1+sqrt((25)-(y-80)^2))&& x>=(105+a-1-sqrt((25)-(y-80)^2)) && 75<=y && y<=85
           imagen(y,x,1:2)=255;
         elseif x<=(125+a-1+sqrt((25)-(y-80)^2))&& x>=(125+a-1-sqrt((25)-(y-80)^2)) && 75<=y && y<=85
            imagen(y,x,1:2)=255;
         elseif x<=(145+a-1+sqrt((25)-(y-80)^2))&& x>=(145+a-1-sqrt((25)-(y-80)^2)) && 75<=y && y<=85
            imagen(y,x,1:2)=255;
        elseif x<=(165+a-1+sqrt((25)-(y-80)^2))&& x>=(165+a-1-sqrt((25)-(y-80)^2)) && 75<=y && y<=85
            imagen(y,x,1:2)=255;
        elseif x<=(185+a-1+sqrt((25)-(y-80)^2))&& x>=(185+a-1-sqrt((25)-(y-80)^2)) && 75<=y && y<=85
            imagen(y,x,1:2)=255;
        elseif x<=(205+a-1+sqrt((25)-(y-80)^2))&& x>=(205+a-1-sqrt((25)-(y-80)^2)) && 75<=y && y<=85
            imagen(y,x,1:2)=255;
        elseif x<=(225+a-1+sqrt((25)-(y-80)^2))&& x>=(225+a-1-sqrt((25)-(y-80)^2)) && 75<=y && y<=85
            imagen(y,x,1:2)=255;
        elseif x<=(245+a-1+sqrt((25)-(y-80)^2))&& x>=(245+a-1-sqrt((25)-(y-80)^2)) && 75<=y && y<=85
            imagen(y,x,1:2)=255;
        else
            imagen(y,x,1)=0;
            imagen(y,x,2)=20;
            imagen(y,x,3)=255;
            
        end
    end
    end  
imshow(uint8(imagen))
imagen(:,:,:)=0;

end
