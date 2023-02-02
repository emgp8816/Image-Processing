%close all
nombre=input('Ingrese el nombre de la imagen: ','s');
imagen=imread(nombre);

gris=rgb2gray(imagen);
s=zeros(1,256);
ecualizada=zeros(size(gris));

subplot(2,2,1), imshow(gris/255), title('Imagen Original')
subplot(2,2,2), [f,mn,fr]=histogramaimagen(gris);
title('Histograma de Imagen Original')

for k=1:256
    a=[1:k]
    f(1:k)
    suma=sum(f(1:k))
    n=find(floor(gris)==k-1);
    s(k)=suma*255/mn;
    for i=1:length(n)
        ecualizada(n(i))=s(k);
    end
    if k==2
        break
    end
end

subplot(2,2,3), imshow(ecualizada/255),title('Imagen Ecualizada')
subplot(2,2,4), [f1,mn1,fr1]=histogramaimagen(ecualizada);
title('Histograma De Imagen Ecualizada')

figure
plot(0:255,s),title('Función de Transformación')
