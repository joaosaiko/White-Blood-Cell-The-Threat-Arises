
if (game_over)
{
    // Pegando as informações da câmera
    var x1 = camera_get_view_x(view_camera[0]);
    var y1 = camera_get_view_y(view_camera[0]);
    var w = camera_get_view_width(view_camera[0]);
    var h = camera_get_view_height(view_camera[0]);
    var x2 = x1 + w;
    var y2 = y1 + h;
    var meio_w = x1 + w / 2;
    var meio_h = y1 + h / 2;

    var qtd = h * 0.15;

    valor = lerp(valor, 1, 0.05);

    draw_set_color(c_black);
    // Escurecendo a tela
    draw_set_alpha(valor - .3);
    draw_rectangle(x1, y1, x2, y2, false);

    // Desenhando retângulo de game over (parte superior)
    draw_set_alpha(1);
    draw_rectangle(x1, y1, x2, y1 + qtd * valor, false);

    // Desenhando retângulo de game over (parte inferior)
    draw_rectangle(x1, y2, x2, y2 - qtd * valor, false);

    draw_set_alpha(1);
    draw_set_color(-1);

    if (valor > 0.85)
    {
        cont = lerp(cont, 1, .01);
        // Escrevendo "Game Over"
        draw_set_alpha(cont);
        draw_set_font(fnt_game_over);
        draw_set_valign(1);
        draw_set_halign(1);
        // Sombra
        draw_set_color(c_red);
        draw_text(meio_w + 1, meio_h + (-20), "G a m e - O v e r");
		draw_set_color(-1);
        // Texto principal
		draw_set_color(c_white)
        draw_text(meio_w, meio_h + (-19), "G a m e - O v e r");
		draw_set_color(-1);
		draw_set_font(-1)
		
		draw_set_font(fnt_recomecar);
        draw_text(meio_w, meio_h + 10, "Pressione Enter para recomeçar");
		
        draw_set_valign(-1);
        draw_set_halign(-1);

        draw_set_alpha(-1);
    }
}
else
{
    valor = 0;
}
