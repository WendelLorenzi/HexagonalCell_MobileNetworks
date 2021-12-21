function tstRayleingh(R)
    c= 300E6;
    fc= 20E6; %20 Mhz - largura de banda do canal
    r0= 100; % 100 metros
    lambda= c/fc; % comprimento de onda
    
   for k= 1:3000
    v(k)= rand(0.1, 7);
    dist(k)= rand(0.5,R);
    z(k)= lognrnd(0,1); %gera um numero aleatório da distribuição Lognormal para cada usuario, media=0 e desvio padrao=1
    betha(k)= (z(k)/(dist(k)/r0).^v(k));
    H(k)= (1/sqrt(2))*abs(normrnd(0,R) + 1i*normrnd(0,R));  % distribuição de Rayleigh para cada usuario - small-scalle-fadding
  end
    D= diag(sqrt(betha)); % large-scalle-fadding
    G= H*D;
    x= 0:0.5:10;
    plot(x,G);
end
