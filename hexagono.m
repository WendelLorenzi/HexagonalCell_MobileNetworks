function [ux, uy]= hexagono(R, N)
    % R é o raio da celula
    % N é a qtd de usuarios

    %vértices do hexágono. Ângulos 0, 60, 120, 180, 240 e 300.
    v_x = R * cos((0:6)*pi/3);
    v_y = R * sin((0:6)*pi/3);

    %Gera 3N pontos aleatórios em um quadrado de 2R por 2R
    c_x = R-rand(1, 3*N)*(2*R);
    c_y = R-rand(1, 3*N)*(2*R);

    %obtém os pontos dentro do polígono
    IN = inpolygon(c_x, c_y, v_x, v_y);

    %dropa os pontos fora do hexágono
    %se algun ponto não estiver no poligono IN será 0 na posição de tal ponto, portanto será atribuido valor 0 no dominio
    c_x = c_x(IN);
    c_y = c_y(IN);

    %escolhe apenas N pontos dentro do haxagono
    idx = randperm(length(c_x));    %permutação aleatória de 1 até length(c_x)
    c_x = c_x(idx(1:N));  %selecina N pontos dentro do poligono (cada ponto é um usuario)  
    c_y = c_y(idx(1:N));
    
    x_torre= 0.0;
    y_torre= 0.0;
    
    ux= c_x;
    uy= c_y;
    
    
    plot(c_x, c_y, 'r*');
    hold on;
    plot(v_x,v_y);
    axis square;
    plot(x_torre, y_torre, 'v');
    hold off

end
