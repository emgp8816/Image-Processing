clear, clc, close all
nuevaColor=255*ones(300,255,3);
%Vázquez Pech Juan Román
%Jueguito RETO1
for f=0:5:60
    nuevaColor=255*ones(300,255,3);
    %pause(0.1);
for i=1:1:300
   for j=1:1:250
      if (60+f<=i && i<=120+f) && ( (50+f-sqrt(900-(i-90-f)^2)) <=j && (j<= (50+f+sqrt(900-(i-90-f)^2))))   
          nuevaColor(i,j,1:3)=[248, 196, 113];
      end      
      if (180<=i && i<=300) && (50-f<=j && j<=100-f)
          nuevaColor(i,j,1:3)=[34, 153, 84];
      end
      if (1<=i && i<=60) && (50-f<=j && j<=100-f)
          nuevaColor(i,j,1:3)=[34, 153, 84];
      end
      
      
      if (150<=i && i<=300) && (245-f<=j && j<=285-f)
          nuevaColor(i,j,1:3)=[0,255,45];
      end
      if (1<=i && i<=55) && (245-f<=j && j<=285-f)
          nuevaColor(i,j,1:3)=[0,255,45];
      end
   end
end
imshow(uint8(nuevaColor))

end
for f=0:5:80
    nuevaColor=255*ones(300,255,3);
    %pause(0.1);
for i=1:1:300
   for j=1:1:250
      if (60-f+60<=i && i<=120-f+60) && ( (50+f+60-sqrt(900-(i-90+f-60)^2)) <=j && (j<= (50+f+60+sqrt(900-(i-90+f-60)^2))))   
          nuevaColor(i,j,1:3)=[248, 196, 113];
      end   
      
       if (180<=i && i<=300) && (50-f-60<=j && j<=100-f-60)
          nuevaColor(i,j,1:3)=[34, 153, 84];
      end
      if (1<=i && i<=60) && (50-f-60<=j && j<=100-f-60)
          nuevaColor(i,j,1:3)=[34, 153, 84];
      end
      
      if (150<=i && i<=300) && (245-60-f<=j && j<=285-60-f)
          nuevaColor(i,j,1:3)=[0,255,45];
      end
      if (1<=i && i<=55) && (245-f-60<=j && j<=285-f-60)
          nuevaColor(i,j,1:3)=[0,255,45];
      end
      
   end
end
imshow(uint8(nuevaColor))

end


for f=0:5:45
    nuevaColor=255*ones(300,255,3);
    %pause(0.1);
for i=1:1:300
   for j=1:1:250
      if (60-20<=i && i<=120-20) && ( (50+140-sqrt(900-(i-90+20)^2)) <=j && (j<= (50+140+sqrt(900-(i-90+20)^2))))   
          nuevaColor(i,j,1:3)=[248, 196, 113];
      end   
      
      
      
      if (150<=i && i<=300) && (245-140-f<=j && j<=285-140-f)
          nuevaColor(i,j,1:3)=[0,255,45];
      end
      if (1<=i && i<=55) && (245-f-140<=j && j<=285-f-140)
          nuevaColor(i,j,1:3)=[0,255,45];
      end
      
      if (200<=i && i<=300) && (245-180-f+200<=j && j<=285-180-f+200)
          nuevaColor(i,j,1:3)=[0, 204, 51];
      end
      if (1<=i && i<=150) && (245-f-180+200<=j && j<=285-f-180+200)
          nuevaColor(i,j,1:3)=[0, 204, 51];
      end
      
   end
end


imshow(uint8(nuevaColor))
%pause(0.15);
end