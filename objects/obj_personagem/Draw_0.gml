/// @description Inserir descrição aqui
// y + 3 desenhando a sombra 3 pixel para baixo
draw_sprite(spr_personagem_sombra, 0, x, y + 4);
draw_self();

if alarm[3] > 0{
	if image_alpha >= 1{
		dano_alpha = -0.05
	}else if image_alpha <= 0{
		dano_alpha = 0.05;
	}
	
	image_alpha += dano_alpha;
}else{
	image_alpha = 1;
}

// Lista de camadas de tiles
var tile_layers = ["Tiles_Veins_Back_Room1", "Tiles_Veins_Back_Room2", "Tiles_Veins_Back_Room3"];

// Obter a posição Y do personagem
var personagem_y = y;

// Loop para desenhar cada camada de tilemap
for (var i = 0; i < array_length_1d(tile_layers); i++) {
    var tile_layer_id = layer_get_id(tile_layers[i]);
    var tilemap_id = layer_tilemap_get_id(tile_layer_id);

    // Desenhar o tilemap e o personagem baseado na posição Y
    if (personagem_y > y) {
        // Desenhar o tilemap primeiro
        draw_tilemap(tilemap_id, 0, 0);
    }

    // Desenhar o personagem apenas uma vez na posição correta
    if (i == 0) {
        draw_self();
    }

    if (personagem_y <= y) {
        // Desenhar o tilemap por trás do personagem
        draw_tilemap(tilemap_id, 0, 0);
    }
}
