nombre=input('Ingrese el nombre de la imagen con su extensión:','s');
n=input('Ingrese el número de imagenes con ruido = ');

imagen=imread(nombre);
gris=color2gris(imagen);
subplot(2,2,1),imshow(gris/255),title('Imagen original')
ruido=double(imnoise(uint8(gris)));
subplot(2,2,2),imshow(ruido/255),title('Imagen con ruido')
[a,b]=size(gris);
promediada=zeros(a,b);

for k=1:n
    promediada=promediada+ruido;
    ruido=double(imnoise(uint8(gris)));
end

promediada=promediada/n;
str=sprintf('Promediado con %d imagenes con ruido',n);
subplot(2,2,3),imshow(promediada/255),title(str)