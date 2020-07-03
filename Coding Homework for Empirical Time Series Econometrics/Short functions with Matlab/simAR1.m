function AR1=simAR1(phi0, phi1, sig2eps, T)
phi0=0; phi1=.8; sig2eps=1; T=250;
AR1=zeros(1,T);
AR1(1)=(phi0)/(1-phi1);
for t=2:T
    eps=normrnd(0,sig2eps);
    AR1(t)=phi0+phi1*AR1(t-1)+eps;
    p=AR1(t);
end



