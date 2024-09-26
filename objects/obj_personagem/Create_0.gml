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
xp = 0;
max_xp[1] = 100;
max_xp[2] = 120;
max_xp[3] = 150;
max_xp[4] = 200;
max_xp[5] = 265;

max_estamina[1] = 100;
max_estamina[2] = 120;
max_estamina[3] = 140;
max_estamina[4] = 180;
max_estamina[5] = 200;
estamina = max_estamina[level];

max_vida[1] = 20;
max_vida[2] = 40;
max_vida[3] = 80;
max_vida[4] = 100;
max_vida[5] = 120;
vida = max_vida[level];

t_dano = true;
empurrar_dir = 0;

dano[1] = 1;
dano[2] = 5;
dano[3] = 8;
dano[4] = 10;
dano[5] = 20;
atacar = false;

dano_alpha = -1;

// Definir camadas de tiles específicas para a room atual
if (room == Room1) {
    tile_layers = ["Tiles_Veins_Back_Room1"];
} else if (room == Room2) {
    tile_layers = ["Tiles_Veins_Back_Room2"];
} else if (room == Room3) {
    tile_layers = ["Tiles_Veins_Back_Room3"];
}

dialogo_exibido = false;