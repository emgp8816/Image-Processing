%nombre=input('Ingrese el nombre de la imagen con su extensión:','s');
n=input('Ingrese la máscara (número impar) = ');

%imagen=imread(nombre);
imagen=imread('prueba01.jpg');
gris=color2gris(imagen);
subplot(2,2,1),imshow(gris/255),title('Imagen original')

ruido=double(imnoise(uint8(gris)));
subplot(2,2,2),imshow(ruido/255),title('Imagen con ruido')

[a,b]=size(gris);
limite=floor(n/2);
start=ceil(n/2);
filtropb=zeros(a-2*limite,b-2*limite);
mask=(1/n^2)*ones(n);

for i=start:a-start
        for j=start:b-start
            vecindad=mask.*ruido(i-limite:i+limite,j-limite:j+limite);
            filtropb(i-start+1,j-start+1)=floor(sum(vecindad(:)));
        end
    end

str=sprintf('Filtro pasa bajas de orden %d',n);
subplot(2,2,3),imshow(filtropb/255),title(str)