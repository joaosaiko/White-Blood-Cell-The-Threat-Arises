/// @description Inserir descrição aqui
//movimentação
direita = -1;
cima = -1;
esquerda = -1;
baixo = -1;

hveloc = 0;
vveloc = 0;

veloc = 2;
veloc_dir = -1;

dir = 0;
//dash
dash_dir = -1;
dash_veloc = 6;
//estado
estado = scr_personagem_andando;

//combate
level = 1;
level_max = 3;
xp = 0;
max_xp = [100, 120, 150];

max_estamina = [30, 40, 50];
estamina = max_estamina[level - 1];

max_vida = [15, 20, 25];
vida = max_vida[level - 1];

t_dano = true;
empurrar_dir = 0;

dano = [5, 10, 15];
atacar = false;

dano_alpha = -1;

textBoxNarrador = noone;
textNarrador[0] = "Você avança pelo Nexus Axilar, onde o pulsar constante das artérias e nervos ecoa ao seu redor. Algo está errado: pequenas células escuras, semelhantes a chamas negras, infestam o sistema. Elas avançam como um exército silencioso, e você sente que algo maior espreita nas sombras.";
textNarrador[1] = "Seu treinamento como glóbulo branco preparou você para muitas ameaças, mas nunca para algo assim. Mas seu dever como linfócito é lidar com perigos, mesmo os desconhecidos. Essas células escuras avançam como fogo, corroendo artérias e nervos, enquanto uma ameaça maior pode destruir todo o Nexus Axilar.";
textNarrador[2] = "O Nexus Axilar clama por ajuda enquanto os filamentos escuros avançam. Elas bloqueiam o fluxo de energia e nutrientes, ameaçando todo o equilíbrio vital. Cada segundo sem ação aumenta o risco de colapso para o sistema imunológico.";
textNarrador[3] = "Com cada batida dos nervos e o pulsar das artérias, você se prepara para enfrentar Rommulos. Ele consome, destrói e compromete a sobrevivência do corpo. Você é a última barreira contra essa sombra de destruição.";

NameNarrador = "Narrador";

textBoxProtagonista = noone;
textProtagonista[0] = "Eu fui treinado para defender o corpo, mas nunca pensei que enfrentaria algo assim. Não é apenas uma batalha... é uma guerra silenciosa que ameaça tudo o que somos.";
textProtagonista[1] = "Sinto que algo ameaçador se aproxima, devo me preparar.";

NameProtagonista = "Linfócito";

// Definir camadas de tiles específicas para a room atual
if (room == Room1) {
    tile_layers = ["Tiles_Veins_Back_Room1"];
} else if (room == Room2) {
    tile_layers = ["Tiles_Veins_Back_Room2"];
} else if (room == Room3) {
    tile_layers = ["Tiles_Veins_Back_Room3"];
}