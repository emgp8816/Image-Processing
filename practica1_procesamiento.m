function [] = practica1_procesamiento()
%Promediar valores de la imagen original, seccionandolos en matrices 2x2 y
%sustiutyendolos por el promedio calculado.
load datos.mat
imshow(gris)
gris1=double(gris);
tam=size(gris);
a=tam(1); b=tam(2);
gris21=zeros(a,b);
for (i=1:2:a-1)
    for (j=1:2:b-1)
         prom=mean(gris1(i:i+1,j:j+1));
         prom2=mean(prom);
          gris21(i:i+1,j:j+1)=prom2;
    end
end
figure
gris2=gris21/255;
imshow(gris2)
end

