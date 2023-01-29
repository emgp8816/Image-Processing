function [gris] = color2gris(color)
color=double(color);
[f,c,capas]=size(color);
    if capas==3
            for i=1:f
                for j=1:c
                    R=color(i,j,1);
                    G=color(i,j,2);
                    B=color(i,j,3);
                    gris(i,j)=0.299*R+0.587*G+0.114*B;
                end
            end
    else
        disp('la imagen ya está en escala de grises');
        gris=color;
     end
end


