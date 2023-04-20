# Concorrencia
Questões em Haskell e Lua

1. A máquina de refrigerante do Rei do Hambuguer, funciona de uma forma bastante simples. A todo
momento, existem clientes enchendo seus copos de refrigerantes, sendo estes de 3 tipos: Pepise-Cola,
Guaraná Polo Norte e Guaraná Quate. Cada cliente leva 1000 ms para encher seu copo com o refrigerante.
Porém a maquina só pode ser utilizada por uma pessoa por vez, então se um cliente está enchendo o copo
com Guaraná Quate, o outro cliente que deseja Guaraná Polo Norte tem que aguardar a máquina estar
disponível para ele. Cada cliente enche seu copo com 300 ml de refrigerante e a máquina suporta apenas
2000 ml de cada refrigerante, ou seja, 6000 ml no total. Para evitar transtorno, sempre que um refrigerante
possuir menos que 1000 ml, ele é reposto com um refil de 1000 ml. Para repor o refrigerante, a máquina
não pode estar sendo utilizada por nenhum cliente e demora 1500 ms para reposição. Dado o número de
clientes que irão estar o tempo todo querendo o refrigerante Pepise-Cola, Guarana Polo Norte e Guaraná
Quate, implemente a máquina de refrigerante do Rei do hambuguer utilizando o conceito de Variáveis
Mutáveis em Haskell. Sempre que alguém estiver utilizando a máquina de refrigerante, apresente as
seguinte informações.
Caso seja para abastecer a máquina: "O refrigerante X foi reabastecido com 1000 ml, e agora possui Y ml",
onde X é o nome do refrigerante e Y a quantidade que possui do mesmo após ele ser reabastecido.
Caso seja um cliente, informe: "O cliente N do refrigerante X está enchenco seu copo", onde N é o número
do cliente para seu respectivo refrigerante e X o nome do refrigerante.

2. Utilizando coroutine na linguagem Lua, simule uma batalha pokemon entre Pikachu e Raichu, onde
Pikachu possui 800 de HP e Raichu possui 1000 de HP. Os dois possuem a mesma lista de ataques com a
mesma probabilidade de usar cada um deles. Você deve simular a batalha, onde cada um ataca em um
turno (é sua escolha quem começa atacando) e você deve informar para cada turno qual pokemon utilizou
qual ataque e quanto de HP os dois ainda possuem. A batalha acaba quando algum pokemon possuir HP
menor ou igual a 0. Para utilizar cada ataque, você deve gerar um número randomicamente entre 1 e 20.
Caso o número gerado seja entre 1 e 10, o ataque que será utilizado é o Choque do trovão, causando 50 de
dano. Caso seja entre 11 e 15, o ataque que será utilizado é o Calda de ferro, causando 100 de dano. Caso
seja entre 16 e 18, o ataque utilizado será o Investida Trovão, causando 150 de dano. E por último, caso
seja entre 19 e 20, o ataque utilizado será o Trovão, causando 200 de dano.
