nombre=input('Ingrese el nombre de la imagen: ','s');
imagen=imread(nombre);
gris=color2gris(imagen);
imshow(gris/255)
[a,b]=size(gris);
umbral=zeros(a,b);
%funcion propia de hitograma
[f,mn,p] = histogramaimagen(gris);

m0=p(1);
num=linspace(1,255,255);
num=num.*p(2:256);
num=sum(num);
mt=m0+num;

w1=zeros(1,254);
w2=zeros(1,254);
mi=zeros(1,254);
m1=zeros(1,254);
m2=zeros(1,254);
sigma=zeros(1,254);

for i=1:254
    j=linspace(1,i,i);
    w1(i)=sum(p(1:i+1));
    w2(i)=1-w1(i);
    suma=j.*p(2:i+1);
    suma=sum(suma);
    mi(i)=m0+suma;
    m1(i)=mi(i)/w1(i);
    m2(i)=(mt-mi(i))/w2(i);
    sigma(i)=w1(i)*(m1(i)-mt)^2+w2(i)*(m2(i)-mt)^2;
end

[varianza,T]=max(sigma);
for i=1:a
    for j=1:b
        if gris(i,j)<=T
           umbral(i,j)=255;
        else
           umbral(i,j)=0;
        end
    end
                    
end

str=sprintf('Imagen con umbral %d',T);
subplot(2,1,1),imshow(umbral/255), title(str)
subplot(2,1,2),[f,mn,p] = histogramaimagen(gris);
hold on
subplot(2,1,2),bar(T,a*b)
