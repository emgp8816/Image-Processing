nombre=input('Ingrese el nombre de la imagen con su extensión:','s');
T=input('T =');
n=input('Ingrese el tamaño de la máscara (número impar) = ');

imagen=imread(nombre);
gris=color2gris(imagen);

[a,b]=size(gris);
limite=floor(n/2);
start=ceil(n/2);

%Declaración de la máscara y matriz para el filtro high boost
ddp=zeros(a-2*limite,b-2*limite);
mask=-1*ones(n);
mask(start,start)=(1/n^2)*(n^2*A-1);

%Declaración de la máscara y matriz para el filtro high boost usando filtro
%pasabajas
fpb=zeros(a-2*limite,b-2*limite);
highb1=zeros(a-2*limite,b-2*limite);
mask1=(1/n^2)*ones(n);


for i=start:a-start
        for j=start:b-start
            vecindad=mask.*gris(i-limite:i+limite,j-limite:j+limite);
            highb(i-start+1,j-start+1)=sum(vecindad(:));
  
            vecindad1=mask1.*gris(i-limite:i+limite,j-limite:j+limite);
            fpb(i-start+1,j-start+1)=sum(vecindad1(:));
        end
end


for i=1:a
    for j=1:b
        
        if gris(i,j)>= T
            gris(i,j)=255;
        else
            gris(i,j)=0;
        end
    end
end