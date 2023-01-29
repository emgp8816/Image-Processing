nombre=input('Ingrese el nombre de la imagen: ','s');
imagen=imread(nombre);
T=input('T=');
gris=color2gris(imagen);
imshow(gris/255)

[a,b]=size(gris);
limite=floor(3/2);
start=ceil(3/2);
bordes=zeros(a-2*limite,b-2*limite);
mask=[-1 -1 -1;
      -1  8 -1;
      -1 -1 -1];


for i=start:a-start
        for j=start:b-start
            vecindad=mask.*gris(i-limite:i+limite,j-limite:j+limite);
            bordes(i-start+1,j-start+1)=floor(sum(vecindad(:)));
        end
end

nueva=zeros(size(bordes));
nueva(find(bordes>=T))=255;
figure
imshow(nueva/255)