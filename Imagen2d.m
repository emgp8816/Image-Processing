%Figuras:cono y prisma
r=linspace(1.5,0);
[X,Y,Z]=cylinder(r);
mesh(X+2,Y+3,Z.*5), xlabel('Eje x'), ylabel('Eje y'),zlabel('Eje z'), axis([0 5 0 5 0 5])
hold on
cero=zeros(1,100);uno=ones(1,100);cuatro=4*ones(1,100);cinco=5*ones(1,100);
ua5=linspace(1,5);ca4=linspace(0,4);ca1=linspace(0,1);

%Inferiores
line(ua5,cero,cero)
line(uno,ca1,cero)
line(ua5,uno,cero)
line(cinco,ca1,cero)

%superiores
line(ua5,cero,cuatro)
line(uno,ca1,cuatro)
line(ua5,uno,cuatro)
line(cinco,ca1,cuatro)

%laterales
line(cinco,uno,ca4)
line(cinco,cero,ca4)
line(uno,cero,ca4)
line(uno,uno,ca4)
