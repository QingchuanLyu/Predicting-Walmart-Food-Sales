function m=theoautocorr(lags, phi1)
m=ones(1, 21);
lags=20; phi1=.8;
for i=1:lags
j=(phi1)^(i);
m(i+1)=j;
end