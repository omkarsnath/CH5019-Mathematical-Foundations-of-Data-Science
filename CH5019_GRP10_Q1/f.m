function[x]=f(a)
a=double(a); %changing data format for ease of calculation
[p,q,r]=svd(a); %svd approach
final=0;
trace1=0;
t=trace(q); %the sum of the diagonal elements of q
t=0.9*t;  %this number can be changed according to requirement
for j=1:64
    trace1=trace1+ q(j,j);
    if trace1>t
        break;
    end
end
for i=1:j %j gives value of hom many of the first diagonal elements of q are to be considered
    final=final+p(:,i)*q(i,i)*((r(:,i))');
end
x=final;

end
    