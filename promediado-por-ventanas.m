clc,clear,close all
imagen=imread('lobo.jpg');
grises=rgb2gray(imagen);
imshow(grises)
tam=size(grises);
gris_n=zeros(tam(1));
for k=1:6
    base=2^k;
    for i=1:base:tam(1)-base+1
        for j=1:base:tam(1)-base+1
            mean1=mean(grises(i:base+i-1,j:j+base-1));
            mean2=mean(mean1);
            gris_n(i:base+i-1,j:j+base-1)=mean2;
        end
    end
figure
imshow(gris_n/255)
end
