// Limpar fundo
draw_clear(c_black);

// Configurar as cores e alinhamentos do texto
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_encerramento);

// Desenhar apenas a mensagem atual com fade aplicado
if (indice_mensagem < array_length_1d(mensagens)) {
    draw_set_alpha(opacidade);
    draw_text(room_width / 2, room_height / 2 - string_height(mensagens[indice_mensagem]) / 2, mensagens[indice_mensagem]);
    draw_set_alpha(1);
}

// Desenhar a mensagem "Pressione ESC para voltar ao menu" sem piscar e centralizada
draw_set_color(c_white);
draw_set_alpha(1);
draw_text(room_width / 2, room_height - 50, "Pressione ESC para voltar ao menu.");
