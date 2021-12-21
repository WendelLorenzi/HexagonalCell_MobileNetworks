function [d]= distancia(usersx, usersy)
torre= zeros(length(usersx)); %Matriz de zeros pois a BS está posicionada em (0,0)
for n= 1:length(usersx)
    d(n)= sqrt((usersx(n)-torre(n)).^2 + (usersy(n)-torre(n)).^2); %calcula a distancia de todos os usuarios e armazena na matriz d
end