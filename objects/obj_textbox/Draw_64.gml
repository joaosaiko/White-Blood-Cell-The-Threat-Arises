/// @description Inserir descrição aqui

if (global.dialogo_ativo) {
    // Definir a posição da caixa de diálogo (parte inferior da tela)
    var gui_width = display_get_gui_width();
    var gui_height = display_get_gui_height();
    
    var pos_x = 20;  // Margem de 20px na lateral esquerda
    var pos_y = gui_height - boxHeight - 20;  // 20px de margem na parte inferior

    // Ajustar a largura da caixa de diálogo para ocupar toda a tela menos as margens
    var boxWidth_dynamic = gui_width - (2 * pos_x);  // Margem de 20px dos dois lados
    
    // Desenhar a caixa de diálogo
    draw_set_color(c_white);
    draw_rectangle(pos_x - 2, pos_y - 2, pos_x + boxWidth_dynamic + 2, pos_y + boxHeight + 2, false);

    draw_set_color(c_black);
    draw_rectangle(pos_x, pos_y, pos_x + boxWidth_dynamic, pos_y + boxHeight, false);  // Caixa interna

    // Cor e estilo do texto
    draw_set_color(c_white);
    draw_set_font(fnt_dialogo);

    // Limitar o texto gradualmente (efeito de digitação)
    if (charCount < string_length(text[page])) {
        charCount += 0.5;
    }
    var textPart = string_copy(text[page], 1, charCount);

    // Desenhar nome do personagem
    draw_set_color(c_aqua);
    draw_set_halign(fa_center);
    draw_text(pos_x + (boxWidth_dynamic / 2), pos_y, name);  // Centralizar o nome na largura da caixa
    draw_set_halign(fa_left);

    // Desenhar texto do diálogo dentro da caixa
    draw_set_color(c_white);
    draw_text_ext(pos_x + xBuffer, pos_y + yBuffer, textPart, -1, boxWidth_dynamic - (2 * xBuffer));  // Texto ajustado ao novo tamanho da caixa

    // Debug: Desenhar contagem de caracteres para ver o progresso do texto
    //draw_text(20, 60, "charCount = " + string(charCount));
}
