/// @description Insert description here
// You can write your code in this editor
if (room == RoomMenu) {
    audio_play_sound(sb_titan, 1, true);  // Inicia a música
} else if (room == Room1) {
	audio_stop_sound(sb_titan);
    audio_play_sound(sb_undertow, 1, true);
} else if (room == Room2) {
	audio_resume_sound(sb_undertow);
} else if (room == Room3) {
	audio_stop_sound(sb_undertow);
    audio_play_sound(sb_sentinel, 1, true);
}