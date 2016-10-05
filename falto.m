fhigh=600;
Hdef=ones(1,L/2);
Hdef(1:fhigh/fs*L)=zeros(1,fhigh/fs*L);
Hdef=[fliplr(Hdef) Hdef];

plot(f,abs(Hdef));
axis([-1000 1000 0 1.1)
