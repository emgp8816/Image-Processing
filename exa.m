color=imread('imagen.jpg');
gris=color2gris(color);

rojoazul=zeros(size(color));
rojoazul(:,:,1:2:3)=color(:,:,1:2:3);

verderojo=zeros(size(color));
verderojo(:,:,1:2)=color(:,:,1:2);

imshow(color),figure,imshow(gris/255)
figure,imshow(rojoazul/255),figure,imshow(verderojo/255)
figure,mesh(gris),colormap(cool())

