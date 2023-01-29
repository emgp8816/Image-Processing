color=imread('chemis.jpg');
imshow(color)
nivel_de_rojo=color(85,196,1);
nivel_de_verde=color(85,196,2);
nivel_de_azul=color(85,196,3);

gris=rgb2gray(color);
figure,imshow(gris)

rojo=zeros(626,626,3);
rojo(:,:,1)=color(:,:,1);
figure,imshow(rojo/255)

verde=zeros(626,626,3);
verde(:,:,2)=color(:,:,2);
figure,imshow(uint8(verde));

azul=zeros(626,626,3);
azul(:,:,3)=color(:,:,3);
figure,imshow(uint8(azul));


segunda=azul+rojo+verde;
figure,imshow(segunda/255)
close all


subplot(231),imshow(color),subplot(232),imshow(gris)
subplot(233),imshow(rojo/255),subplot(234),imshow(verde/255)
subplot(235),imshow(azul/255),subplot(236),imshow(segunda/255)
close all

amarillo=verde+rojo;
figure,imshow(amarillo/255)


amarillo=zeros(626,626,3);
amarillo=color(:,:,1:2);
figure,imshow(amarillo/255)

cian=verde+azul;
figure, imshow(amarillo/255)

cia=zeros(626,626,3);
cian=color(:,:,2:3);
figure,imshow(uint8(cian))




