function [x,y] = camara(X0,Y0,Z0,r1,r2,r3,alpha,theta,lamda,X,Y,Z)
x1=X-X0;
y1=Y-Y0;
z1=Z-Z0;
div=-x1.*sind(theta)*sind(alpha)+y1.*cosd(theta)*sind(alpha)-z1.*cosd(alpha)+r3+lamda;
x=lamda*(x1.*cosd(theta)+y1.*sind(theta)-r1)./div;
y=lamda*(x1.*sind(theta)*cosd(alpha)+y1.*cosd(theta)*cosd(alpha)+z1.*sind(alpha)-r2)./div;


end

