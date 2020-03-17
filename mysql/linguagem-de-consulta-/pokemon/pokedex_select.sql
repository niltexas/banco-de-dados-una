show databases;

#1) Selecione o banco de dados (esquema) pokédex.
use pokedex;

#2) Obtenha informações da estrutura da tabela Pokémon.
desc pokemon;

#3) Selecione todos os pokémons cadastrados no banco de dados.
select * from pokemon;

#4) Selecione o numero, nome, cor, altura_m e peso_kg de todos os pokémons cadastrados.
select numero, nome, cor, altura_m, peso_kg from pokemon;

#5) Qual é o numero e o nome de todos os pokémons da primeira geração?
select nome, numero from pokemon where geracao = 1;

#6) Quais são os pokémons Amarelo da primeira geração?
select nome, cor from pokemon where cor = "Amarelo";

#7) Qual é o pokémon mais forte? #O Pokemon mais forte segundo o atributo TOTAL é o Arceus (Deus Pokemon)
select nome, total from pokemon order by total desc;
select nome, total from pokemon where total > 680;

#8) Selecione o numero, nome e tipo1; de todos os pokémons cujo tipo primário é Fire.
select numero, nome, tipo1 from pokemon where tipo1 = "Fire";

#10) Selecione em ordem decrescente o numero, nome e defesa de todos os pokémons. (não tem questão 09)
select numero, nome, defesa from pokemon order by numero desc;
select numero, nome, defesa from pokemon order by nome desc;
select numero, nome, defesa from pokemon order by defesa desc;

#11) Qual o pokémon possui menor taxa de captura? Selecione apenas numero e nome. (existem vários pokemons com a menor taxa de captura)
select numero, nome, taxa_captura from pokemon order by taxa_captura asc;
select numero, nome from pokemon where taxa_captura = 3;

#12) Selecione todos pokémons que não possuem tipo secundário, ou seja, tipo2.
select * from pokemon where tipo2 is null;

#13) Selecione numero, nome, tipo1, tipo2 de todos os pokémons que possuem o peso entre 100kg e 500kg.
select numero, nome, tipo1, tipo2 from pokemon where peso_kg between 100 and 500;

#14) Crie um ranking dos top 10 pokémons mais velozes, contendo numero, nome e velocidade.
select numero, nome, velocidade from pokemon order by velocidade desc limit 10;

#15) Selecione numero, nome, tipo1, tipo2, taxa_captura dos pokémons que possuem os dois tipos e tenham uma taxa de captura acima de 100. Ordene os resultados decrescente pela taxa de captura.
select numero, nome, tipo1, tipo2, taxa_captura from pokemon where tipo2 is not null and taxa_captura > 100 order by taxa_captura desc;

#16) Quais são os tipos primários dos pokémons?
select distinct tipo1 from pokemon;

#17) Selecione o numero, nome e cor; de todos os pokémons que o nome começa com a letra D.
select numero, nome, cor from pokemon where nome like 'd%';

#18) Qual é o pokémon mais poderoso de todas as gerações?
select nome, total from pokemon order by total desc;
select nome, total from pokemon where total > 680;

#19) Selecione o numero, nome, defesa, ataque dos pokémons com defesa > 60 e ataque <= 70; ordenados decrescente pelo total.
select numero, nome, defesa, ataque from pokemon where defesa > 60 and ataque <= 70 order by total desc;

#20) Selecione todos os pokémons do tipo Planta e Venenoso que não sejam Green, ordenado crescente pelo nome.
select * from pokemon where tipo1 = "Planta" and tipo2 = "Venenoso" and cor <> "Green" order by nome desc;

#21) Selecione de maneira crescente os nomes dos pokémons que possuem a letra y na 4ª posição do nome.
select nome from pokemon where nome like '___y%' order by nome asc;

#22) Qual é o maior valor de ataque_especial cadastrado?
select ataque_especial from pokemon order by ataque_especial desc;
select ataque_especial from pokemon where ataque_especial > 150;

#23) Selecione o numero, nome e altura_m dos pokémons que possuem altura acima de 2,10m.
select numero, nome, altura_m from pokemon where altura_m > 2.10;

#24) Quais são as diferentes tipos de cores dos pokémons? Apresente os resultados de maneira crescente pelo nome da cor.
select distinct cor from pokemon order by cor asc;

#25) Selecione o nome e velocidade dos pokémons com velocidade entre 30 e 70. Ordene os resultados por nome (crescente) e velocidade (decrescente)
select nome, velocidade from pokemon where velocidade between 30 and 70 order by nome asc, velocidade desc;

#26) Quem são os pokémons lendários? Apresente os resultados ordenados por total decrescente.
select * from pokemon where lendario = 1 order by total desc;

#27)Selecione os pokémons da primeira geração com taxa de captura igual a 255.
select * from pokemon where geracao = 1 and taxa_captura = 255;

#28) Quem é o mais poderoso? selecione o Pikachu, Squirtle, Bulbasaur e Charmander; ordenados decrescente pelo total.
select * from pokemon where nome in ("Pikachu","Squirtle","Bulbasaur","Charmander") order by total desc;

#29) Quem são os pokémons da primeira geração, que começam com a letra d e não possuem tipo secundário? Ordene os resultados crescente por taxa_captura e decrescente pelo total.
select * from pokemon where geracao = 1 and nome like "d%" order by taxa_captura asc, total desc;

#30) Qual é o ranking dos top 5 pokémons lendários com maior taxa_captura e total? Apresente apenas numero, nome, total, taxa_captura nos resultados.
select numero, nome, total, taxa_captura from pokemon where lendario = 1 order by taxa_captura desc;
select numero, nome, total, taxa_captura from pokemon where lendario = 1 order by total desc;
select distinct nome, total, taxa_captura from pokemon where lendario = 1 order by taxa_captura, total desc limit 5; 

#31) Selecione o numero, nome, peso_kg dos pokémons com peso entre 2kg e 3kgs?
select numero, nome, peso_kg from pokemon where peso_kg between 2 and 3.0;

#32) Selecione o numero, nome, tipo1 e tipo2 dos pokémons com tipo primário Normal, que não possuem tipo secundário. Existe algum pokémon lendário nos resultados, se sim, os remova dos resultados?
select numero, nome, tipo1, tipo2, lendario from pokemon where tipo2 is null and tipo1 = "Normal"; 
select numero, nome, tipo1, tipo2 from pokemon where tipo2 is null and tipo1 = "Normal" and lendario = 0;

#33) Quem são os pokémons do tipo Water que não são azuis? Apresente numero, nome, tipo1, tipo2 e cor, ordenados pelo nome de maneira crescente.
select numero, nome, tipo1, tipo2, cor from pokemon where tipo1 = "Water" and cor <> "Blue" order by nome desc;

#34) Crie um ranking dos top 10 pokémons mais lentos.
select * from pokemon order by velocidade asc limit 10;

#35) Selecione os pokémons cujo nome comece e termine com a letra a.
select nome from pokemon where nome like "a%a";

#36) Quem são os pokémons do tipo Fire que não são vermelhos? Apresente numero, nome, tipo1, tipo2 e cor, ordenados pelo nome de maneira crescente.
select numero, nome, tipo1, tipo2, cor from pokemon where tipo1 = "Fire" and cor <> "Red";

#37) Quais são os diferentes tipos de peso_kg dos pokémons? Apresente os resultados ordenados de maneira crescente.
select numero, nome, peso_kg from pokemon order by peso_kg asc;

#38) Selecione o numero, nome e hp dos pokémons com valores entre 0 e 100. Ordene os resultados de maneira crescente por hp e nome.
select numero, nome, hp from pokemon where hp between 0 and 100 order by hp, nome asc;

#39) Selecione o numero, nome, hp, ataque, defesa e total; dos pokémons com valores de hp, ataque, defesa maiores ou iguais a 100.
select numero, nome, hp, ataque, defesa, total from pokemon where hp >= 100 and ataque >= 100 and defesa >= 100;

#40)  Selecione todos os pokémons do tipos Water e Gelo, ordenados decrescente por total.
select * from pokemon where tipo1 = "Water" and tipo2 = "Gelo" order by total desc;