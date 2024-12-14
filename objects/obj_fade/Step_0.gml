/// @description Insert description here
// You can write your code in this editor
// obj_fade - Evento Step
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
