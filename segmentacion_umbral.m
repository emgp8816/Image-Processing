%nombre=input('Ingrese el nombre de la imagen: ','s');
%imagen=imread(nombre);

imagen=imread('chemis.jpg');
gris=color2gris(imagen);
s=zeros(1,256);
umbral=zeros(size(gris));
[a,b]=size(gris);

subplot(2,1,1), imshow(gris/255), title('Imagen Original')
subplot(2,1,2), [f,mn,fr]=histogramaimagen(gris);
title('Histograma de Imagen Original')

T=input('T=');
for i=1:a
    for j=1:b
        if gris(i,j)<=T
           umbral(i,j)=255;
        else
           umbral(i,j)=0;
        end
    end
                    
end
figure
subplot(2,2,1), imshow(gris/255), title('Imagen Original')
subplot(2,2,2), imshow(umbral/255), title('Imagen Procesada')
subplot(2,2,3:4), [f,mn,fr]=histogramaimagen(gris);
hold on, subplot(2,2,3:4),bar(T,a*b),title('Histograma de Imagen Original')
