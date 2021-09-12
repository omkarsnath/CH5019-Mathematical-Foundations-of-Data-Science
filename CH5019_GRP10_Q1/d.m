function[z]=d(x,y)
x=double(x); %change of format for ease of calculation
y=double(y);
x=x(:); %turning matrix to a vector
y=y(:);
z=(x-y).*(x-y); %difference being error; all terms are squared and then added
z=sum(z); %total error is sum 
z=sqrt(z);
end
