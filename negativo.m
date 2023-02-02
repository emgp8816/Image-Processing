imagen=imread('chemis.jpg');
gris=rgb2gray(imagen);
subplot(1,2,1),imshow(gris/255)

%Funcion de transformación
negativa=255-gris;
[y,x]=size(gris);

subplot(1,2,2),imshow(negativa/255),figure
plot(gris,negativa,'k'), xlabel('r'), ylabel('s'),axis([0 255 0 255])
%r valores en grises orginiales
%s valores de  grises nuevos
title('Negativo de una imagen')
legend('T(r)')
