%nombre=input('Ingrese el nombre de la imagen con su extensión:','s');
angulo=input('Angulo= ');

%imagen=imread(nombre);
imagen=imread('30.jpg');
gris=color2gris(imagen);
subplot(1,2,1),imshow(gris/255),title('Imagen original')

[a,b]=size(gris);
ddl=zeros(size(a-1,b-1));
     mask=[-1 -1 -1 -1 -1 -1 -1 -1 -1;
          -1 -1 -1 -1 -1 -1 -1 -1 -1;
          -1 -1 -1 -1 -1 -1 -1 -1 -1;
          -1 -1 -1 -1 -1 -1  8  8 -1;
          -1 -1  8  8  8  8  8 -1 -1;
          -1  8  8 -1 -1 -1 -1 -1 -1;
          -1 -1 -1 -1 -1 -1 -1 -1 -1;
          -1 -1 -1 -1 -1 -1 -1 -1 -1;
          -1 -1 -1 -1 -1 -1 -1 -1 -1];
     T=6120;
     for i=5:a-4
        for j=5:b-4
            vecindad=mask.*gris(i-4:i+4,j-4:j+4);
            R=abs(floor(sum(vecindad(:))));
            if R >= T
                ddl(i-4,j-4)=255;
            else 
                ddl(i-4,j-4)=0;
            end
        end
end
str=sprintf('Linea a %d° grados',angulo);
subplot(1,2,2),imshow(ddl/255),title(str)