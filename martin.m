x=-2:0.1:5;
y=-2:0.1:5;
W=[0.1 0.1];
w1=0:0.01:0.1;
w2=0:0.01:0.1;
LimitLine=-x+3;
plot(x,LimitLine), hold on
plot(w1,w2), hold on
for x1=-2:0.1:5
    for y1=-2:0.1:5
        a=hardlim(W*[x1;y1]-0.3);
        if a==1
            plot(x1,y1,'m.'), hold on
        else
            plot(x1,y1,'g.'), hold on
        end
    end
end