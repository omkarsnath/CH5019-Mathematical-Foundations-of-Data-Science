x=[x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 x28 x29 x30];
x=[x x31 x32 x33 x34 x35 x36 x37 x38 x39 x40 x41 x42 x43 x44 x45 x46 x47 x48 x49 x50 x51 x52 x53 x54 x55 x56 x57 x58 x59 x60];
x=[x x61 x62 x63 x64 x65 x66 x67 x68 x69 x70 x71 x72 x73 x74 x75 x76 x77 x78 x79 x80 x81 x82 x83 x84 x85 x86 x87 x88 x89 x90];
x=[x x91 x92 x93 x94 x95 x96 x97 x98 x99 x100 x101 x102 x103 x104 x105 x106 x107 x108 x109 x110 x111 x112 x113 x114 x115 x116 x117 x118 x119 x120];
x=[x x121 x122 x123 x124 x125 x126 x127 x128 x129 x130 x131 x132 x133 x134 x135 x136 x137 x138 x139 x140 x141 x142 x143 x144 x145 x146 x147 x148 x149 x150];

i1=l(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10); %representative image is formed
i2=l(x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
i3=l(x21,x22,x23,x24,x25,x26,x27,x28,x29,x30);
i4=l(x31,x32,x33,x34,x35,x36,x37,x38,x39,x40);
i5=l(x41,x42,x43,x44,x45,x46,x47,x48,x49,x50);
i6=l(x51,x52,x53,x54,x55,x56,x57,x58,x59,x60);
i7=l(x61,x62,x63,x64,x65,x66,x67,x68,x69,x70);
i8=l(x71,x72,x73,x74,x75,x76,x77,x78,x79,x80);
i9=l(x81,x82,x83,x84,x85,x86,x87,x88,x89,x90);
i10=l(x91,x92,x93,x94,x95,x96,x97,x98,x99,x100);
i11=l(x101,x102,x103,x104,x105,x106,x107,x108,x109,x110);
i12=l(x111,x112,x113,x114,x115,x116,x117,x118,x119,x120);
i13=l(x121,x122,x123,x124,x125,x126,x127,x128,x129,x130);
i14=l(x131,x132,x133,x134,x135,x136,x137,x138,x139,x140);
i15=l(x141,x142,x143,x144,x145,x146,x147,x148,x149,x150);
i=[i1 i2 i3 i4 i5 i6 i7 i8 i9 i10 i11 i12 i13 i14 i15]; %stored in a single big matrix
h=zeros(150,15);
for k=1:150
f=x(:,(64*k-63):(64*k)); %the test image is chosen one by one
for j=1:15
g=i(:,(64*j-63):(64*j)); %the test image is then compared to each of the representative image
h(k,j)=d(f,g); %the norm of every test image wrt to every representative image
end
end
p=zeros(150,2);
for q=1:150
[p(q,1),p(q,2)]=min((h(q,:))'); %the first column of p contains the minimum value of the norm while the second column contains it index
end
p=p(:,2);
t=zeros(150,1);
for r=1:150
t(r)=ceil(r/10); %t matric correctly shows the subject of each image with first 10 rows showing 1 then next 10 showing 2 and so on
end
for r=1:150
if t(r)==p(r)
t(r)=1;
else
t(r)=0;
end
end
accuracy=sum(t)/150 %how many of t and p match out of 150