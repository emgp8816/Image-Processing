
%nombre=input('Ingrese el nombre de la imagen con su extensión:','s');
n=input('Ingrese la máscara (número impar) = ');

%imagen=imread(nombre);
imagen=imread('chemis.jpg');
gris=color2gris(imagen);
subplot(1,2,1),imshow(gris/255),title('Imagen original')

[a,b]=size(gris);
limite=floor(n/2);
start=ceil(n/2);
filtropa=zeros(a-2*limite,b-2*limite);
mask=-(1/n^2)*ones(n);
mask(start,start)=(1/n^2)*(n^2-1);



for i=start:a-start
        for j=start:b-start
            vecindad=mask.*gris(i-limite:i+limite,j-limite:j+limite);
            filtropa(i-start+1,j-start+1)=floor(sum(vecindad(:)));
        end
    end

str=sprintf('Filtro pasa altas de orden %d',n);
subplot(1,2,2),imshow(filtropa/255),title(str)