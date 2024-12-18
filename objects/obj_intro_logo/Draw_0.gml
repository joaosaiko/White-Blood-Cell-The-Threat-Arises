// Desenhar elementos
if (state <= 2) {
    // Configurar o fade para a imagem
    draw_set_alpha(fade_time);
    draw_set_color(c_white);

    // Desenhar a imagem redimensionada
    draw_sprite_ext(logo_jogo, 0, image_x, image_y, scale_factor, scale_factor, 0, c_white, fade_time);
} else {
    // Configurar o fade para o texto
    draw_set_alpha(fade_time);
    draw_set_color(c_white);

    // Desenhar o texto centralizado
	draw_set_font(fnt_encerramento);
    draw_text(text_x, text_y, text);
	draw_set_font(-1);
}

// Resetar o alpha
draw_set_alpha(1);