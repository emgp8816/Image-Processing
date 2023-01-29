function [f,mn,p] = histogramaimagen(matriz)
[a,b]=size(matriz);
mn=a*b;
f=zeros(1,256);
grises=[1:256];
for k=1:256
    coin=find(floor(matriz)==k-1);
    f(k)=length(coin);
end

p=f/mn;
bar(grises,f)
end

