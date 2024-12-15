/// @description Lógica para fade da tela e ajuste do volume
if (fade_state == "in") {
    fade_opacity -= fade_speed;
    if (fade_opacity <= 0) {
        fade_opacity = 0;
        instance_destroy(); // Remove o objeto ao final do fade in
    }
} else if (fade_state == "out") {
    fade_opacity += fade_speed;
    if (fade_opacity >= 1) {
        fade_opacity = 1;
        if (target_room != -1) {
            room_goto(target_room); // Troca para a sala alvo
        }
    }
}   
// Ajustar volume da música conforme a opacidade
if (audio_is_playing(sb_titan)) {
    audio_sound_gain(sb_titan, 1 - fade_opacity, true); // Fade out conforme a tela escurece
}else if (audio_is_playing(sb_undertow)){
	audio_sound_gain(sb_undertow, 1 - fade_opacity, true); // Fade out conforme a tela escurece
}