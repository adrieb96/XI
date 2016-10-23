flow=600;
fhigh=500;

Hlow=zeros(1,L/2);
Hhigh=ones(1,L/2);

Hlow(1:flow/fs*L)=ones(1,flow/fs*L);
Hhigh(1:fhigh/fs*L)=zeros(1,fhigh/fs*L);

Hlow=[fliplr(Hlow) Hlow];
Hhigh=[fliplr(Hhigh) Hhigh];

Hdef=Hhigh.*Hlow;

plot(f,abs(Hdef));
axis([-1000 1000 0 1.1])
