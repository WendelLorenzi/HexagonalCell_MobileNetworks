<h2> Celula Hexagonal para comunicações móveis </h2>
<p> Célula de raio (R) dinâmico, onde cada usuario da célula é representado com um ponto (*) e a ERB (Estação Rádio Base) por um triangulo invertido no centro da célula. A cada chamada o usuário se encontra em uma posição diferente na célula. </p>
 <br>
 Chamada fela função: main(Raio, qtd_usuarios_cell) --> ex: main(300, 50) <br> 
 
 ![hexagonoCell](https://user-images.githubusercontent.com/38894557/146994379-87bb9778-fff4-4ebd-90e8-cdaee5e847d7.png)

 
 <br>
 <h3> Cálculo de Distância </h3>
Cada usuario tem uma distância associada, tal distância, em metros, representa o espaço entre dois pontos, usuário e a ERB localizada no centro. Calculada pela raiz do quadrado da diferença entre os pontos.
<br>
<h3> Canal de Desvaneciamento </h3>
shadowing (sombreamento) e desvanecimento geometrico do CSI (Channel State Information)
<br>
<h4> Desvanecimento em larga escala </h4>
Representa a atenuação da potência média ou a perda no percurso devido ao movimento do receptor sobre grandes áreas.
<br>
<h4> Desvanecimento de pequena escala </h4>
Representa as expressivas mudanças na amplitude, fase e ângulo de chegada do sinal devido às pequenas alterações na posição do receptor
<br>
