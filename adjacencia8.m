%nombre=input('Ingrese el nombre de la imagen: ','s');
%imagen=imread(nombre);
imagen=imread('2.jpg');
P=input('P=');
gris=color2gris(imagen);
imshow(gris/255)


[y,x]=ginput;
x=ceil(x);
y=ceil(y);
pixel=gris(x,y);
[c,d]=size(gris);
resta=abs(gris-pixel);

region=zeros(c,d);
final=zeros(c,d);
region(find(resta<=P))=255;
max=find(region==255);
max=length(max);
imshow(region/255);
can=[x,y];
[a,b]=size(can);
cont=1;
prueba=0;
while a <max
for i=cont:a
    f=can(i,1);
    c=can(i,2);
         if region(f+1,c)==255
             A=[f+1 c];
             final(f+1,c)=255;
             dif=find(can==A);
             if  length(dif)==2 &&(dif(2)-dif(1))==a
                 region(f+1,c)=0;
                 dif=[];
             else
                can=[can;A];
                dif=[];
             end
         end
         
         
         if region(f-1,c)==255
             A=[f-1 c];
             final(f-1,c)=255;
             dif=find(can==A);
             if length(dif)==2 &&(dif(2)-dif(1))==a
                 dif=[];
             else
                can=[can;A];
                dif=[];
             end
         end
         
         if region(f,c+1)==255
             A=[f c+1];
             final(f,c+1)=255;
             dif=find(can==A);
             if length(dif)==2 &&(dif(2)-dif(1))==a
                 dif=[];
             else
                can=[can;A];
                dif=[];
             end
         end
         
         if region(f,c-1)==255
             A=[f c-1];
             final(f,c-1)=255;
             dif=find(can==A);
             if length(dif)==2 &&(dif(2)-dif(1))==a
                 dif=[];
             else
                can=[can;A];
                dif=[];
             end    
         end
      %imshow(final/255)
end
[a,b]=size(can);
cont=cont+1;

end
final;
imshow(final)