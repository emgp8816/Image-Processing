color=imread('chemis.jpg');
gris=rgb2gray(color);
figure,subplot(121),imshow(color),subplot(122),imshow(gris)

rojo=zeros(size(color));
verde=zeros(size(color));
azul=zeros(size(color));

rojo(:,:,1)=color(:,:,1);
verde(:,:,2)=color(:,:,2);
azul(:,:,3)=color(:,:,3);

figure,subplot(221),imshow(color),subplot(222),imshow(rojo/255), subplot(223),imshow(verde/255),subplot(224),imshow(azul/255)

amarillo=zeros(size(color));
amarillo(:,:,1:2)=color(:,:,1:2);

cian=zeros(size(color));
cian(:,:,2:3)=color(:,:,2:3);

magenta=zeros(size(color));
magenta(:,:,1:2:3)=color(:,:,1:2:3);

figure,subplot(221),imshow(color),subplot(222),imshow(amarillo/255), subplot(223),imshow(cian/255),subplot(224),imshow(magenta/255)

rojogris=color(:,:,1);
verdegris=color(:,:,2);
azulgris=color(:,:,3);

figure,subplot(221),imshow(color),subplot(222),imshow(rojogris), subplot(223),imshow(verdegris),subplot(224),imshow(azulgris)
figure,subplot(221),imshow(gris),subplot(222),imshow(rojogris), subplot(223),imshow(verdegris),subplot(224),imshow(azulgris)
%Las partes brillantes son las más altas en los tonos de cada capa, los mas
%obscuros son los que tienen valores más bajos en la matriz.

figure,mesh(gris),colormap(cool())
%Las partes brillantes son lo spuntos mas altos de la grafica, y los mas
%oscuros los mas bajos

