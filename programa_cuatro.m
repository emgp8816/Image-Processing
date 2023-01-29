imagen=imread('chemis.jpg');
grises=color2gris(imagen);
imshow(grises)
gris=double(grises);
gris1=zeros(size(gris));
tam=size(gris);
a=tam(1); b=tam(2);
for k=7:-1:1
    valor=256/2^k;
    for i=1:a
        for j=1:b
            c=mod(gris(i,j),valor);
            gris1(i,j)=gris(i,j)-c;
        end
    end
figure,imshow(gris1/255)
end
