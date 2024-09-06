/// @description Inserir descrição aqui
randomize();
//movimentação
estado = -1;
prox_estado = 0;

hveloc = 0;
vveloc = 0;
veloc = 0.2;
veloc_perseg = 0.5;

dest_x = 0;
dest_y = 0;

alarm[0] = 1;

dist_atack = 50;
dist_no_atack = 100;

sombra = -1;

//combate
max_vida = 5;
vida = max_vida;
empurrar_dir = 0;
empurrar_veloc = 0;
hit = false;