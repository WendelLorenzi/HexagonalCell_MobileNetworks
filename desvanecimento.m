function [G, large_scale, small_scale]= desvanecimento(dist, ux, R)
    c= 300E6; % velocidade da luz m/s
    fc= 3.5E9; % 3.5 Ghz - frequencia da portadora
    lambda= c/fc; % comprimento de onda
    r0= 100; % 100 metros
    v= 3.8;
    for k= 1:length(ux)
    z= lognrnd(0,1); %gera um numero aleatório da distribuição Lognormal para cada usuario, media=0 e desvio padrao=1
    betha(k)= (z/(dist(k)/r0).^v);
    ploss(k)= 20*log10((4*pi*dist(k))/lambda); %path loss (db)
    ploss(k)= (10.^(ploss./10)); % transformando path loss para watts
    H(k)= (1/sqrt(2))*abs(normrnd(0,R) + 1i*normrnd(0,R));  % distribuição de Rayleigh para cada usuario - small-scalle-fadding
    shadowing(k)= makedist('Lognormal');
    small_scale= makedist('Rayleigh','b',0.7);
    end
    D= diag(sqrt(betha)); 
    G= H*D; % shadowing (sombreamento) e desvanecimento geometrico do CSI
    large_scalle= shadowing * ploss;

end
