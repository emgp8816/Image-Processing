function [x,y] = camara1(X,Y,Z,lamda)
%X=1;Y=1;Z=1;
%lamda=0.35;
div=lamda-Z;
x=lamda*X/div;
y=lamda*Y/div;
fprintf( 'x= %d y y=%d',x,y)
end

