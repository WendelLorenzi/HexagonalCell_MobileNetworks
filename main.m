function main(R, N)
%R= Raio da celula em metros
%N= qtd de usuarios na celula
[ux, uy]= hexagono(R, N);
dist= distancia(ux, uy);
%[G, large, small]= desvanecimento(dist, ux, R);
end