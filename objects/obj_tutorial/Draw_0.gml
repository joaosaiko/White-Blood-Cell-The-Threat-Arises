/// @description Insert description here
// You can write your code in this editor
// Cor e alinhamento do texto
draw_set_color(c_white);
draw_set_font(fnt_dialogo)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Texto do tutorial
draw_text(room_width / 2, room_height / 4, texto_movimento);
draw_text(room_width / 2, room_height / 4 + 32, texto_ataque);
draw_text(room_width / 2, room_height / 4 + 64, texto_dash);
draw_text(room_width / 2, room_height / 4 + 128, texto_dialogo);
draw_text(room_width / 2, room_height / 4 + 245, voltar);

// Resetar alinhamento (boas práticas)
draw_set_halign(fa_left);
draw_set_valign(fa_top);

