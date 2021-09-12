function [i] =l(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10) %to take the all of the 10 matrices of the same subject
j1=f(x1);
j2=f(x2);
j3=f(x3);
j4=f(x4);
j5=f(x5);
j6=f(x6);
j7=f(x7);
j8=f(x8);
j9=f(x9);
j10=f(x10);
j=j1+j2+j3+j4+j5+j6+j7+j8+j9+j10;
i=j/10; %average of the images
i=uint8(i); %changing format
end

