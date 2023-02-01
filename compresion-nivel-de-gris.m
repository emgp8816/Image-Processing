clc,clear,close all
imagen=imread('lobo.jpg');
grises=rgb2gray(imagen);
imshow(grises)
gris=zeros(size(grises));
tam=size(gris);
for k=7:-1:1
    valor=256/2^k;
    for i=1:tam(1)
        for j=1:tam(2)
            c=mod(grises(i,j),valor);
            gris(i,j)=grises(i,j)-c;
        end
    end
figure,imshow(gris/255)
end
