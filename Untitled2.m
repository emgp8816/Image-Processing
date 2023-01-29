for k=f:a
   for m=c:b 
   %x=i(k);
   %y=j(k);
    x=k;
    y=m;
    if imagen(k,m)==1
        if x==f && y==c+1
            str=strcat(str,'0');
            region(k,m)=255;
        elseif x==f+1 && y==c+1
            str=strcat(str,'1');
            region(k,m)=255;
        elseif x==f+1 && y==c
            str=strcat(str,'2');
            region(k,m)=255;
        elseif x==f+1 && y==c-1
            str=strcat(str,'3');
            region(k,m)=255;
        elseif x==f && y==c-1
            str=strcat(str,'4');
            region(k,m)=255;
        elseif x==f-1 && y==c-1
            str=strcat(str,'5');
            region(k,m)=255;
        elseif x==f-1 && y==c
            str=strcat(str,'6');
            region(k,m)=255;
        elseif x==f-1 && y==c+1
            str=strcat(str,'7');
            region(k,m)=255;
        else
            str=strcat(str,'');
            region(k,m)=0;
            
        end
            f=k;
            c=m;
    end
     %f=i(k);
    %c=j(k);


   end
end
str
figure 
imshow(region/255)



for k=1:d-1
    f=i(k);
    c=j(k);
    x=i(k+1);
    y=j(k+1);
        if x==f 
            if y==c+1
           str=strcat(str,'0');
            elseif y==c-1
            str=strcat(str,'4');
            end
        end
        if x==f+1 
            if y==c+1
            str=strcat(str,'1');
            elseif y==c
            str=strcat(str,'2');
            elseif y==c-1
            str=strcat(str,'3');
            end
        end

        if x==f-1 
            if y==c-1
            str=strcat(str,'5');
            elseif  y==c
            str=strcat(str,'6');
            elseif y==c+1
            str=strcat(str,'7');
        end
        end
end
    
[i,j]=find(imagen==1);
d=length(i);
f=i(1);
c=j(1);
str='';
