/// @description Inserir descrição aqui

// Evento Draw GUI do obj_dialogo
if (global.dialogo_ativo) {

    // Definir a posição da caixa de diálogo (parte inferior da tela)
    var pos_x = 20;  // Margem de 20px na lateral
    var pos_y = display_get_gui_height() - boxHeight - 20;  // 20px de margem na parte inferior

    // Cor de fundo da caixa de diálogo
	draw_set_color(c_white);
	draw_rectangle(pos_x-2, pos_y-2, pos_x+boxWidth+2, pos_y+boxHeight+2, false);
	
    draw_set_color(c_black);
    draw_rectangle(pos_x, pos_y, pos_x+boxWidth, pos_y+boxHeight, false);  // Desenhar um retângulo preenchido
    
	// Cor e estilo do texto
    draw_set_color(c_white);
    draw_set_font(fnt_dialogo);  // Definir uma fonte previamente criada no jogo
	draw_set_font(fnt_dialogo);
    
    // Limitar o texto gradualmente (efeito de digitação)
    if (charCount < string_length(text[page])) {
        charCount += 0.5;
    }
    textPart = string_copy(text[page], 1, charCount);
    
    // Desenhar nome do personagem
	draw_set_color(c_aqua);
	draw_set_halign(fa_center);
    draw_text(((pos_x + xBuffer) + boxWidth/2), pos_y, name);  // Ajuste da posição do nome se necessário
	draw_set_halign(fa_left);
    // Desenhar texto do diálogo dentro da caixa
	draw_set_color(c_white);
    draw_text_ext(pos_x + xBuffer, pos_y + yBuffer, textPart, stringHeigth, boxWidth - (2*xBuffer));  // Texto da caixa de diálogo
    
    // Debug: Desenhar contagem de caracteres para ver o progresso do texto
    draw_text(20, 60, "charCount = " + string(charCount));

}


