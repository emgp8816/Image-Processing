%nombre=input('Ingrese el nombre de la imagen con su extensión:','s');
grados=input('grados ');

%imagen=imread(nombre);
imagen=imread('lineas20o50o60o120o130o150o.png');
%imagen=imread('chemis.jpg');
gris=color2gris(imagen);
subplot(1,2,1),imshow(gris/255),title('Imagen original')

[a,b]=size(gris);
ddl=zeros(size(a-1,b-1));

h=[-1 -1 -1;
    2  2  2;
   -1 -1 -1];
v=[-1  2 -1;
   -1  2 -1;
   -1  2 -1];
mas45=[-1 -1  2;
       -1  2 -1;
        2 -1 -1];
men45=[ 2 -1 -1;
       -1  2 -1;
       -1 -1  2];

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
