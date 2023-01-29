nombre=input('Ingrese el nombre de la imagen con su extensión:','s');
imagen=imread(nombre);
gris=rgb2gray(imagen);
region=logical(region);
region = bwlabel(region,4);
imshow(region/255)