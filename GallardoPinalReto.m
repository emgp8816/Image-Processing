imagen1=zeros(480,640);
c='00000000';
for k=0:7
    nombre=sprintf('CAPA%d.BMP',k);
    imagen=double(imread(nombre));
    for i=1:480
        for j=1:640
            d=dec2bin(imagen(i,j));
            c(k+1)=d(length(d));                      
            imagen1(i,j)=imagen1(i,j)+bin2dec(c);
        end
    end
    c='00000000';
end

imshow(imagen1/255)

