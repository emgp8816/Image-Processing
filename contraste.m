r1=input('r1 =');
r2=input('r2 =');
s1=input('s1 =');
s2=input('s2 =');

%recta 1
m1=s1/r1;
b1=s1-m1*r1;
%recta 2
m2=(s1-s2)/(r1-r2);
b2=s2-m2*r2;

%recta 3
m3=(s2-255)/(r2-255);
b3=s2-m3*r2;

%Transformacion de gris a color
imagen=imread('chemis.jpg');
gris=color2gris(imagen);
[a,b]=size(gris);
subplot(1,2,1),imshow(gris/255)

%Funcion de transformación
icontraste=zeros(size(gris));
 for i=1:a
    for j=1:b
        pixel=gris(i,j);
        if pixel<=r1
            icontraste(i,j)=m1*pixel+b1;
        elseif pixel<=r2
            icontraste(i,j)=m2*pixel+b2;
        else
            icontraste(i,j)=m3*pixel+b3;
        end 
    end
 end
 
 %Grafico
y=1:255;
x=1:255;
  for k=1:255
        if y(k)<=r1
            y(k)=m1*x(k)+b1;
        elseif y(k)<=r2
            y(k)=m2*x(k)+b2;
        else
            y(k)=m3*x(k)+b3;
        end 
 end
 
 
subplot(1,2,2),imshow(uint8(icontraste)),figure


plot(x,y,'k'), xlabel('r'), ylabel('s'),axis([0 255 0 255])
%r valores en grises orginiales
%s valores de  grises nuevos
title('Contraste de una imagen')
legend('T(r)')