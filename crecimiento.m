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
region(find(resta<=P))=255;
imshow(region/255)

%superior


for i=0:a-x-1
    for j=0:b-y-1
        if region(x+i,y+j)==255 
           if (region(x+i+1,y+j+1)==255||region(x+i-1,y+j)==255|| region(x+i,y-1+j)==255)
                region(x+i,y+j)=255;
           else
               region(x+i,y+j)=0;
           end
        end
    end
end
figure
imshow(region/255)

for i=0:a-x-1
   for j=1:y-2
        if region(x+i,y+1-j)==255 
           if (region(x+i,y-j)==255|| region(x+i-1,y-j)==255|| region(x+i,y+1-j)==255)
                region(x+i,y+1-j)=255;
            else
               region(x+1-i,y+1-j)=0;
               break
           end
        end
    end
end
figure
imshow(region/255)
for i=0:x-2
  for j=0:b-y-1
        if region(x+1-i,y+j)==255 
           if (region(x-i,y+j-1)==255 ||region(x-i+1,y+j)==255|| region(x-i,y-1+j)==255)
                region(x+1-i,y+j)=255;
            else
               region(x+1-i,y+j)=0;
           end
        end
    end
end
figure
imshow(region/255)
for i=0:x-2
  for j=0:y-2
        if region(x+1-i,y+1-j)==255 
           if (region(x-i,y-j)==255 ||region(x-i+1,y-j)==255|| region(x-i,y-1+j)==255)
                region(x+1-i,y+j)=255;
            else
               region(x+1-i,y+j)=0;
           end
        end
    end
end

figure
imshow(region/255)