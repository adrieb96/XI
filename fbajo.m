flow=500;
Hdef=zeros(1,L/2);
Hdef(1:flow/fs*L)=ones(1,flow/fs*L);
Hdef=[fliplr(Hdef) Hdef];

plot(f,abs(Hdef));
axis([-1000 1000 0 1.1])
