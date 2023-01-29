nombre=input('Ingrese el nombre de la imagen con su extensión:','s');
orden=input('Ingrese el tamaño de la vecindad (número impar) = ');
vecindad=floor(orden/2);
start=ceil(orden/2);


imagen=imread(nombre);
gris=color2gris(imagen);
subplot(2,2,1),imshow(gris/255),title('Imagen original')
ruido=double(imnoise(uint8(gris)));
subplot(2,2,2),imshow(ruido/255),title('Imagen con ruido')

[a,b]=size(gris);
filtro=zeros(a-2*vecindad,b-2*vecindad);



for i=start:a-vecindad
        for j=start:b-vecindad
            vecindadm=ruido(i-vecindad:i+vecindad,j-vecindad:j+vecindad);
            filtro(i-start+1,j-start+1)=median(vecindadm(:));
        end
    end

str=sprintf('Filtro de orden %d',orden);
subplot(2,2,3),imshow(filtro/255),title(str)