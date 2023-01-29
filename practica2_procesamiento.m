function [] = practica2_procesamiento()
%Promediar valores de la imagen original, seccionandolos en matrices 2x2 y
%sustiutyendolos por el promedio calculado.
load datos.mat
imshow(gris)
gris1=double(gris);
tam=size(gris);
a=tam(1); b=tam(2);
gris21=zeros(a);
for (i=1:4:a-4)
    for (j=1:4:b-4)
        prom=(gris1(i,j)+gris1(i+1,j)+gris1(i,j+1)+gris1(i+1,j+1))/4;
     matriz=[prom,prom;
             prom,prom];
     gris21(i:i+1,j:j+1)=matriz;
    end
end
figure
gris2=gris21/255;
imshow(gris2)
end
