/// @description Insert description here
// You can write your code in this editor
// obj_fade - Evento Draw
draw_set_alpha(fade_opacity);
draw_rectangle_color(0, 0, display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
draw_set_alpha(1); // Restaura o alpha para outros desenhos