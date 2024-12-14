/// @description Insert description here
// You can write your code in this editor
// No evento Draw do obj_controle_escurecimento
draw_self(); // Desenha os elementos padrão, caso existam

// Desenhar a camada preta com opacidade baseada no progresso do escurecimento
draw_set_color(c_black); // Define a cor preta
draw_set_alpha(escurecimento_progresso);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1); // Reseta a transparência para outros elementos
draw_set_color(-1);
