/// @description Desenho das telas

// Variáveis para controlar as posições dos elementos
var pos_sprite_x = room_width / 2;    // Posição do sprite no eixo X
var pos_sprite_y = room_height / 4;   // Posição do sprite no eixo Y

var pos_texto_x = room_width / 2;     // Posição do texto de descrição no eixo X
var pos_texto_y = pos_sprite_y + sprite_get_height(sprites[estado_atual]) / 2 + 40; // Posição do texto de descrição no eixo Y

var pos_instrucao_x = room_width / 2; // Posição da instrução no eixo X
var pos_instrucao_y = room_height - 30; // Posição da instrução no eixo Y

// Função para quebrar o texto em várias linhas
function quebrar_texto(texto, largura_max) {
    var palavras = string_split(texto, " ");
    var linha_atual = "";
    var resultado = [];
    
    for (var i = 0; i < array_length(palavras); i++) {
        var nova_linha = linha_atual == "" ? palavras[i] : linha_atual + " " + palavras[i];
        
        if (string_width(nova_linha) <= largura_max) {
            linha_atual = nova_linha;
        } else {
            array_push(resultado, linha_atual);
            linha_atual = palavras[i];
        }
    }
    
    // Adiciona a última linha
    if (linha_atual != "") {
        array_push(resultado, linha_atual);
    }
    
    return resultado;
}

// Desenho do sprite atual no centro (ou posição definida)
draw_set_color(c_white);
draw_set_font(fnt_dialogo);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_sprite(sprites[estado_atual], 0, pos_sprite_x, pos_sprite_y);

// Desenho do texto de descrição com ajuste de quebra de linha
var texto_ajustado = quebrar_texto(texto_descricao[estado_atual], room_width - 40); // Deixa um padding de 20 em cada lado

var texto_pos_y = pos_texto_y;
for (var j = 0; j < array_length(texto_ajustado); j++) {
    draw_text(pos_texto_x, texto_pos_y, texto_ajustado[j]);
    texto_pos_y += string_height(texto_ajustado[j]) + 5; // Adiciona espaçamento entre as linhas
}

// Desenho da instrução para o jogador abaixo do texto de descrição
draw_text(pos_instrucao_x, pos_instrucao_y, "Pressione [Espaço] para avançar [esc] para sair.");
