/// @description Controla o ciclo de transição (imagem e texto)
switch (state) {
    case 0: // Fade in (imagem)
        fade_time += fade_speed / room_speed;
        if (fade_time >= 1) {
            fade_time = 1; // Garante que não ultrapasse 1
            state = 1; // Transição para o estado "mantendo"
            wait_counter = 60; // Define quanto tempo vai esperar antes de fazer o fade out
        }
        break;

    case 1: // Mantendo imagem visível
        if (wait_counter > 0) {
            wait_counter--; // Aguarda o tempo definido
        } else {
            state = 2; // Transição para o estado de fade out (imagem)
        }
        break;

    case 2: // Fade out (imagem)
        fade_time -= fade_speed / room_speed;
        if (fade_time <= 0) {
            fade_time = 0; // Garante que não fique negativo
            state = 3; // Transição para o fade in do texto
        }
        break;

    case 3: // Fade in (texto)
        fade_time += fade_speed / room_speed;
        if (fade_time >= 1) {
            fade_time = 1; // Garante que não ultrapasse 1
            state = 4; // Transição para o estado "mantendo" texto
            wait_counter = 60; // Define quanto tempo vai esperar antes de fazer o fade out do texto
        }
        break;

    case 4: // Mantendo texto visível
        if (wait_counter > 0) {
            wait_counter--; // Aguarda o tempo definido
        } else {
            state = 5; // Transição para o fade out do texto
        }
        break;

    case 5: // Fade out (texto)
        fade_time -= fade_speed / room_speed;
        if (fade_time <= 0) {
            fade_time = 0; // Garante que não fique negativo
            room_goto(RoomMenu); // Vai para a próxima sala
            instance_destroy(); // Destroi o objeto após o ciclo
        }
        break;
}