
A=input('Inicio de intervalo A = ');
B=input('Fin de intervalo B = ');
s1=input('Nivel de gris s1 = ');

%Transformacion de gris a color
imagen=imread('chemis.jpg');
gris=rgb2gray(imagen);
[a,b]=size(gris);


%Funcion de transformación
ibinario=zeros(size(gris));
segmentacion=zeros(size(gris));
 for i=1:a
    for j=1:b
        pixel=gris(i,j);
        if pixel>=A && pixel<B
            ibinario(i,j)=s1;
            segmentacion(i,j)=s1;
        else
            segmentacion(i,j)=pixel;
            ibinario(i,j)=0;
        end 
    end
 end
 
 %Grafico
y=1:255;
y1=1:255;
x=1:255;
  for k=1:255
        if x(k)>=A && x(k)<B
            y(k)=s1;
            y1(k)=s1;
        else
            y1(k)=x(k);
            y(k)=0;
        end 
 end
 
 
subplot(2,2,1),imshow(gris)
subplot(2,2,2),imshow(uint8(ibinario))
subplot(2,2,3),plot(x,y,'k'), xlabel('r'), ylabel('s'),axis([0 300 0 300]),grid on
%r valores en grises orginiales
%s valores de  grises nuevos
title('Binario de una imagen')
legend('T(r)')
figure
subplot(2,2,1),imshow(gris)
subplot(2,2,2),imshow(uint8(segmentacion))
subplot(2,2,3),plot(x,y1,'k'), xlabel('r'), ylabel('s'),axis([0 300 0 300]), grid on
title('Segmentación de una imagen')
legend('T(r)')
hold on

