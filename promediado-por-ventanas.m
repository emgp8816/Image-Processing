imagen=imread('lobo.jpg');
grises=rgb2gray(imagen);
%imshow(grises)
gris=grises(1:512,1:512);
gris1=double(gris);
imshow(gris)
tam=size(gris);
a=tam(1); 
gris21=zeros(a);
for k=1:6
    base=2^k;
    matriz=zeros(base);
    for (i=1:base:a-base+1)
        for (j=1:base:a-base+1)
            mean1=mean(gris1(i:base+i-1,j:j+base-1));
            mean2=mean(mean1);
            matriz(:,:)=mean2;
            gris21(i:base+i-1,j:j+base-1)=matriz;
        end
    end
figure
gris2=uint8(gris21);
imshow(gris2)
end
