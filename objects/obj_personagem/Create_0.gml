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

dano = [105, 110, 115];
atacar = false;

dano_alpha = -1;

global.inimigos_derrotados = false;

// Definir camadas de tiles específicas para a room atual
if (room == Room1) {
    tile_layers = ["Tiles_Veins_Back_Room1"];
} else if (room == Room2) {
    tile_layers = ["Tiles_Veins_Back_Room2"];
} else if (room == Room3) {
    tile_layers = ["Tiles_Veins_Back_Room3"];
}