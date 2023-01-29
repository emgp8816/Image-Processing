%Entradas y valores
X0=input('X0 = ');
Y0=input('Y0 = ');
Z0=input('Z0 = ');
theta=input('theta = ');
alpha=input('alpha = ');
r1=input('r1 = ');
r2=input('r2 = ');
r3=input('r3 = ');
lamda =input('lamda = ');

%Figuras:cono y prisma
r=linspace(1.5,0);
[X,Y,Z]=cylinder(r);
subplot(1,2,1),mesh(X+2,Y+3,Z.*5),colormap(cool), xlabel('Eje x'), ylabel('Eje y'),zlabel('Eje z'), axis([0 5 0 5 0 5])
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


%Movimiento de la cámara

%Transformación prisma
[xc,yc]= camara(X0,Y0,Z0,r1,r2,r3,alpha,theta,lamda,X+2,Y+3,5*Z);
subplot(1,2,2),mesh(xc,yc,zeros(size(xc))), xlabel('Eje x'), ylabel('Eje y'),axis([-inf inf -inf inf])
hold on


%Inferiores
%1 line(ua5,cero,cero)
[xinf1,yinf1]= camara(X0,Y0,Z0,r1,r2,r3,alpha,theta,lamda,ua5,cero,cero);
plot(xinf1,yinf1,'b'),grid
hold on

%2 line(uno,ca1,cero)
[xinf2,yinf2]= camara(X0,Y0,Z0,r1,r2,r3,alpha,theta,lamda,uno,ca1,cero);
plot(xinf2,yinf2,'b'),grid
hold on

%3 line(ua5,uno,cero)
[xinf3,yinf3]= camara(X0,Y0,Z0,r1,r2,r3,alpha,theta,lamda,ua5,uno,cero);
plot(xinf3,yinf3,'b'),grid
hold on

%4 line(cinco,ca1,cero)
[xinf4,yinf4]= camara(X0,Y0,Z0,r1,r2,r3,alpha,theta,lamda,cinco,ca1,cero);
plot(xinf4,yinf4,'b'),grid
hold on


%Superiores
%1 line(ua5,cero,cuatro)
[xsup1,ysup1]= camara(X0,Y0,Z0,r1,r2,r3,alpha,theta,lamda,ua5,cero,cuatro);
plot(xsup1,ysup1,'b'),grid
hold on

%2 line(uno,ca1,cuatro)
[xsup2,ysup2]= camara(X0,Y0,Z0,r1,r2,r3,alpha,theta,lamda,uno,ca1,cuatro);
plot(xsup2,ysup2,'b'),grid
hold on

%3 line(ua5,uno,cuatro)
[xsup3,ysup3]= camara(X0,Y0,Z0,r1,r2,r3,alpha,theta,lamda,ua5,uno,cuatro);
plot(xsup3,ysup3,'b'),grid
hold on

%4 line(cinco,ca1,cuatro)
[xsup4,ysup4]= camara(X0,Y0,Z0,r1,r2,r3,alpha,theta,lamda,cinco,ca1,cuatro);
plot(xsup4,ysup4,'b'),grid
hold on

%Laterales
%1 line(cinco,uno,ca4) 
[x1,y1]= camara(X0,Y0,Z0,r1,r2,r3,alpha,theta,lamda,cinco,uno,ca4);
plot(x1,y1,'b'),grid
hold on

% 2 line(cinco,cero,ca4)
[x2,y2]= camara(X0,Y0,Z0,r1,r2,r3,alpha,theta,lamda,cinco,cero,ca4);
plot(x2,y2,'b'),grid
hold on

%3 line(uno,cero,ca4)
[x3,y3]= camara(X0,Y0,Z0,r1,r2,r3,alpha,theta,lamda,uno,cero,ca4);
plot(x3,y3,'b'),grid
hold on

%4 line(uno,uno,ca4)
[x4,y4]= camara(X0,Y0,Z0,r1,r2,r3,alpha,theta,lamda,uno,uno,ca4);
plot(x4,y4,'b'),grid
hold on
