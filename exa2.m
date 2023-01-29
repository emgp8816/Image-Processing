nombre=input('Ingrese el nombre de la imagen con su extensión:','s');
imagen=imread(nombre);
gris=color2gris(imagen);
[a,b]=size(gris);
procesada=zeros(a,b);

for i=1:a
    for j=1:b
        if gris(i,j)<=100 && gris(i,j)>=50
            procesada(i,j)=255;
        else 
            procesada(i,j)=gris(i,j); 
        end
    end
end

        

