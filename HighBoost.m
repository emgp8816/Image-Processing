nombre=input('Ingrese el nombre de la imagen con su extensión:','s');
n=input('Ingrese el tamaño de la máscara (número impar) = ');
A=input('A = ');
%Lectura de imagen, y transformación a gris
imagen=imread(nombre);
gris=color2gris(imagen);
subplot(2,2,1),imshow(gris/255),title('Imagen original')

%Obtención de parametros para el ciclo for
[a,b]=size(gris);
limite=floor(n/2);
start=ceil(n/2);

%Declaración de la máscara y matriz para el filtro high boost
highb=zeros(a-2*limite,b-2*limite);
mask=-(1/n^2)*ones(n);
mask(start,start)=(1/n^2)*(n^2*A-1);

%Declaración de la máscara y matriz para el filtro high boost usando filtro
%pasabajas
fpb=zeros(a-2*limite,b-2*limite);
highb1=zeros(a-2*limite,b-2*limite);
mask1=(1/n^2)*ones(n);


for i=start:a-start
        for j=start:b-start
            vecindad=mask.*gris(i-limite:i+limite,j-limite:j+limite);
            highb(i-start+1,j-start+1)=sum(vecindad(:));
  
            vecindad1=mask1.*gris(i-limite:i+limite,j-limite:j+limite);
            fpb(i-start+1,j-start+1)=sum(vecindad1(:));
        end
end

highb1=A*gris(start:a-limite, start:b-limite)-fpb;

str=sprintf('Filtro High Boost de orden %d usando máscara',n);
subplot(2,2,2),imshow(highb/255),title(str)

str=sprintf('Filtro High Boost de orden %d empleando filtro pasabajas',n);
subplot(2,2,3),imshow(highb1/255),title(str)