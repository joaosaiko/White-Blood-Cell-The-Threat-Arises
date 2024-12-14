switch (estado) {
    case "fadein":
        // Fade-in da mensagem
        if (opacidade < 1) {
            opacidade += fade_velocidade;
        } else {
            opacidade = 1;
            estado = "mostrar";
        }
        break;
    
    case "mostrar":
        // Mantém mensagem por um tempo
        contador_tempo++;
        if (contador_tempo > tempo_espera) {
            estado = "fadeout";
        }
        break;
    
    case "fadeout":
        // Fade-out da mensagem
        if (opacidade > 0) {
            opacidade -= fade_velocidade;
        } else {
            opacidade = 0;
            contador_tempo = 0; // Reseta o contador
            indice_mensagem++;
            if (indice_mensagem < array_length_1d(mensagens)) {
                estado = "fadein"; // Próxima mensagem
            } else {
                estado = "concluido";
            }
        }
        break;

    case "concluido":
        // Retorna ao menu quando todas as mensagens são exibidas
        room_goto(RoomMenu);
        break;
}
