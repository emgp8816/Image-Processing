%Inicializamos imagenes
imagengris=zeros(300,250);
imagen=zeros(300,250,3);

for capa=1:3
    for x=1:250
        for y=1:300
            %rectángulo
            if (180<=y && y<=240) && (100<=x && x<=200)
                imagengris(y,x)=20;
                imagen(y,x,3)=255; 
            %triangulo
            elseif (y<=150) && ((-2/3)*y+110<=x && x<=(2/3)*y-10)
                imagengris(y,x)=120;
                imagen(y,x,1)=255;
            %medio circulo
            elseif 150<=x && x<=(200+sqrt((900)-(y-90)^2)) && 60<=y && y<=120
                imagengris(y,x)=200;
                imagen(y,x,1:2)=255;
            %fondo
            else 
                imagengris(y,x)=255;
                imagen(y,x,capa)=255;
            end
        end
    end  
end
figure
imshow(imagengris/255)
figure
imshow(uint8(imagen))
