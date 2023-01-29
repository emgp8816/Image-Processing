%nombre=input('Ingrese el nombre de la imagen: ','s');
%imagen=imread(nombre);
imagen=imread('cerebro.jpg');
P=input('T=');
gris=color2gris(imagen);
imshow(gris/255)

[y,x]=ginput;
x=ceil(x);
y=ceil(y);
pixel=gris(x,y);
[a,b]=size(gris);
resta=abs(gris-pixel);
region=zeros(a,b);
[row, column]=find(resta<=P));
region=logical(region);
region = bwlabel(region,4);
z=region(x,y);

for i=1:a
    for j=1:b
        if region(i,j)==z
        region(i,j)=255;
        else
        region(i,j)=0;
        end
    end
end
imshow(region/255)