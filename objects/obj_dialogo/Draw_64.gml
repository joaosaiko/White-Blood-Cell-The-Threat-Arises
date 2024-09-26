/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Pegando o tamanho da tela GUI
depth = -1;

var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

// Configurar posição e cor
var _xx = 0;
var _yy = _guia - 200;
var _color = c_black;

// Definir a fonte
draw_set_font(fnt_dialogo);

// Desenhar a caixa de diálogo
draw_rectangle_color(_xx, _yy, _guil, _guia, _color, _color, _color, _color, false);

// Mostrar o texto do diálogo atual
draw_text_ext(_xx + 32, _yy + 32, texto[pagina], 32, _guil - 64);
