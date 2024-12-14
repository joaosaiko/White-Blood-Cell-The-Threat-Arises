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
textNarrador[0] = "Você avança pelo Nexus Axilar, onde o calor das grandes artérias pulsa ao seu redor. O ambiente é um labirinto de veias e nervos, cada batida ecoando como um tambor. Faíscas elétricas correm pelos nervos, iluminando a escuridão. Tudo aqui é interconectado, vivo, mas algo está errado. A ameaça espreita, comprometendo a harmonia deste sistema vital.";
textNarrador[1] = "Seu treinamento como glóbulo branco o preparou para ameaças, mas nada o preparou para Rommulos. Filamentos escuros começam a se espalhar pelos vasos, sufocando o fluxo vital. A célula cancerígena está corroendo o corpo, espalhando caos por onde passa. Sua presença é uma sombra, comprometendo a energia e os nutrientes. O equilíbrio do corpo está em risco.";
textNarrador[2] = "As artérias brilham fracamente, como se chamassem por ajuda. Este é o campo onde você provará seu valor. O Nexus exige proteção, e a ameaça cresce a cada instante. Você sente a pressão do tempo, sabendo que a sobrevivência do corpo depende de sua ação. Está em suas pseudópodes a responsabilidade de restaurar a harmonia.";
textNarrador[3] = "Com os nervos vibrando e as artérias pulsando, você se prepara para a batalha. Cada movimento do inimigo é uma ameaça ao fluxo vital. O destino do corpo está em suas mãos, ou melhor, em suas pseudópodes. O Nexus Axilar não pode cair. O equilíbrio está prestes a ser testado, e você é a última linha de defesa.";

Name = "Narrador";

// Definir camadas de tiles específicas para a room atual
if (room == Room1) {
    tile_layers = ["Tiles_Veins_Back_Room1"];
} else if (room == Room2) {
    tile_layers = ["Tiles_Veins_Back_Room2"];
} else if (room == Room3) {
    tile_layers = ["Tiles_Veins_Back_Room3"];
}