nombre=input('Ingrese el nombre de la imagen: ','s');
imagen=imread(nombre);
P=input('P=');

gris=color2gris(imagen);
imshow(gris/255)

[y,x]=ginput;
x=ceil(x);
y=ceil(y);
pixel=gris(x,y);
[a,b]=size(gris);
resta=abs(gris-pixel);
region=zeros(a,b);
region(x,y)=255;

for i=1:a
    for j=1:b
        if resta(i,j)<=P
            resta(i,j)=255;
        else
            resta(i,j)=0;
        end
    end
end
imshow(region/255)
%superior izquierda
i=1;
while i>0
      [f,c,v]=find(resta(x-i:x+i,y+i)==255);
      if length(v)==0
          i=0;
      else
        for j=0:i
           if resta(x-i+j,y+i-1)==255 && resta(x-i+j,y+i)==255
               region(x-i+j,y+i)==255;
               i=i+1;
           else 
               region(x-i+j,y+i)==0;
               [f,c,v]=find(resta(x-i:x+i,y+i)==255);
                if length(v)==0
                 i=0;
                else
                    i=i+1;
                end
           end
        end
      end
end



figure
imshow(region/255)