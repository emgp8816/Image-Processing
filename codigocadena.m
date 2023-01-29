%nombre=input('Ingrese el nombre de la imagen con su extensión:','s');
p=input('Porcentaje de cambio de resolución (en decimal) = ');

%imagen=imread(nombre);
imagen=imread('7.png');
gris=color2gris(imagen);
subplot(2,2,1),imshow(gris/255)

imagen=edge(gris,'Sobel',p);
subplot(2,2,2),imshow(imagen)
[i,j]=find(imagen==1);
d=length(i);
[filas,columnas]=size(imagen);
f=i(1);
c=j(1);
cont=1;
str='';
i(1)=[];
j(1)=[];
cont2=0;
while cont<d+1
        if  c+1<=columnas && imagen(f,c+1)==1
            str=strcat(str,'0');
            c=c+1;
            a=find(i==f);
            b=find(j==c);
            for k=1:length(a)
                s=find(b==a(k));
                if length(s)~=0
                   i(a(k))=[];
                   j(a(k))=[];
                break
                end
            end
            cont=cont+1;
          
        elseif  f+1<=filas && c+1<=columnas && imagen(f+1,c+1)==1
            str=strcat(str,'1');
            f=f+1;
            c=c+1;
            a=find(i==f);
            b=find(j==c);
            for k=1:length(a)
                s=find(b==a(k));
                if length(s)~=0
                   i(a(k))=[];
                   j(a(k))=[];
                break
                end
            end
             cont=cont+1;
        elseif  f+1<=filas && imagen(f+1,c)
            str=strcat(str,'2');
            f=f+1;
            a=find(i==f);
            b=find(j==c);
            for k=1:length(a)
                s=find(b==a(k));
                if length(s)~=0
                   i(a(k))=[];
                   j(a(k))=[];
                break
                end
            end
            cont=cont+1;
        elseif  f+1<=filas && c-1>0 && imagen(f+1,c-1)==1 
            str=strcat(str,'3');
            f=f+1;
            c=c-1;
            a=find(i==f);
            b=find(j==c);
            for k=1:length(a)
                s=find(b==a(k));
                if length(s)~=0
                   i(a(k))=[];
                   j(a(k))=[];
                break
                end
            end
            cont=cont+1;
        elseif  c-1>0 && imagen(f,c-1)==1 
            str=strcat(str,'4');
            c=c-1;
            a=find(i==f);
            b=find(j==c);
            for k=1:length(a)
                s=find(b==a(k));
                if length(s)~=0
                   i(a(k))=[];
                   j(a(k))=[];
                break
                end
            end
            cont=cont+1;
        elseif  f-1>0 && c-1>0 && imagen(f-1,c-1) 
            str=strcat(str,'5');
            f=f-1;
            c=c-1;
            a=find(i==f);
            b=find(j==c);
            for k=1:length(a)
                s=find(b==a(k));
                if length(s)~=0
                   i(a(k))=[];
                   j(a(k))=[];
                break
                end
            end
            cont=cont+1;
        elseif  f-1>0 && imagen(f-1,c)
            str=strcat(str,'6');
            f=f-1;
            a=find(i==f);
            b=find(j==c);
            for k=1:length(a)
                s=find(b==a(k));
                if length(s)~=0
                   i(a(k))=[];
                   j(a(k))=[];
                break
                end
            end
            cont=cont+1;
        elseif  f-1>0 && c+1<=columnas && imagen(f-1,c+1) 
            str=strcat(str,'7');
            f=f-1;
            c=c+1;
            a=find(i==f);
            b=find(j==c);
            for k=1:length(a)
                s=find(b==a(k));
                if length(s)~=0
                   i(a(k))=[];
                   j(a(k))=[];
                break
                end
            end
            cont=cont+1;
        else
            str=strcat(str,'');
            resta=f+c;
            suma=i+j;
            dif=abs(suma-resta);
            [dif,pos]=min(dif);
            f=i(pos);
            c=j(pos);
            i(pos)=[];
            j(pos)=[];
            cont=cont+1;
        end
end
dim = [.01 .1 .98 .4];
annotation('textbox',dim,'String',str)


