nombre=input('Ingrese el nombre de la imagen con su extensión:','s');
imagen=imread(nombre);
gris=color2gris(imagen);
[a,b]=size(gris);

imagenmrx=zeros(a-1,b-1);
imagenmry=zeros(a-1,b-1);
imagenmpx=zeros(a-2,b-2);
imagenmpy=zeros(a-2,b-2);
imagenmsx=zeros(a-2,b-2);
imagenmsy=zeros(a-2,b-2);


mrx=[1 0;
    -1 0];

mry=[1 -1;
     0 0];

mpx=[-1 -1 -1;
      0  0  0;
      1  1  1];
mpy=[-1 0 1;
     -1 0 1;
     -1 0 1];
 
msx=[-1 -2 -1;
      0  0  0;
      1  2  1];
msy=[-1 0 1;
     -2 0 2;
     -1 0 1];
. for i=1:a-1
     for j=1:b-1
         mrx1=mrx.*gris(i:i+1,j:j+1);
         mry1=mry.*gris(i:i+1,j:j+1);
         imagenmrx(i,j)=abs(sum(mrx1(:)));
         imagenmry(i,j)=abs(sum(mry1(:)));
         
         if i>1 && j>1 
            mpx1=mpx.*gris(i-1:i+1,j-1:j+1);
            mpy1=mpy.*gris(i-1:i+1,j-1:j+1);
            msx1=msx.*gris(i-1:i+1,j-1:j+1);
            msy1=msy.*gris(i-1:i+1,j-1:j+1);
         
            imagenmpx(i-1,j-1)=abs(sum(mpx1(:)));
            imagenmpy(i-1,j-1)=abs(sum(mpy1(:)));
            imagenmsx(i-1,j-1)=abs(sum(msx1(:)));
            imagenmsy(i-1,j-1)=abs(sum(msy1(:)));
         end
     end
 end
 
imagenmr=imagenmrx+imagenmry;
imagenmp=imagenmpx+imagenmpy;
imagenms=imagenmsx+imagenmsy;

subplot(2,2,1),imshow(gris/255), title('Imagen Original')
subplot(2,2,2),imshow(imagenmrx/255), title('Roberts en x')
subplot(2,2,3),imshow(imagenmry/255), title('Roberts en y')
subplot(2,2,4),imshow(imagenmr/255), title('Gradiente Roberts Total')
figure

subplot(2,2,1),imshow(gris/255), title('Imagen Original')
subplot(2,2,2),imshow(imagenmpx/255), title('Prewitt en x')
subplot(2,2,3),imshow(imagenmpy/255), title('Prewitt en y')
subplot(2,2,4),imshow(imagenmp/255), title('Gradiente Prewitt Total')
figure

subplot(2,2,1),imshow(gris/255), title('Imagen Original')
subplot(2,2,2),imshow(imagenmsx/255), title('Sobel en x')
subplot(2,2,3),imshow(imagenmsy/255), title('Sobel en y')
subplot(2,2,4),imshow(imagenms/255), title('Gradiente Sobel Total')

