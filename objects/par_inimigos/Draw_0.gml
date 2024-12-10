/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if hit == true{
	gpu_set_fog(true, c_white, 0, 0);
	draw_sprite(sombra, image_index, x - 1, y + 1);
	draw_self();
	gpu_set_fog(false, c_white, 0, 0)
}else{
	draw_sprite(sombra, image_index, x - 1, y + 1);
	draw_self();
}

//inverte a sprite para direação do personagem
if dest_x < x{
	image_xscale = -1;
}else{
	image_xscale = 1;
}

if alarm[2] >= 0 {
    // Largura da barra de vida (com origem alinhada corretamente)
    var _sprw = sprite_get_width(spr_inimigo_hud_vida); 
    
    // Ajustar a posição para centralizar a barra sobre o inimigo
    var _x_barra = x - (_sprw / 2); 
    var _y_barra = y - sprite_get_height(sprite_index) / 2 - 8; // Altura ajustada acima do inimigo
    
    // Desenhar a HUD da vida
    draw_sprite_ext(spr_inimigo_hud_vida, 0, _x_barra, _y_barra, 1, 1, 0, c_white, 1);
    
    // Desenhar a barra de vida proporcional
    draw_sprite_ext(spr_inimigo_barra_vida, 0, _x_barra, _y_barra, vida / max_vida, 1, 0, c_white, 1);
}
