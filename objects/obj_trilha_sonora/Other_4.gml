/// @description Insert description here
// You can write your code in this editor
var sala_atual = room;

switch sala_atual {
	case RoomMenu:
		audio_stop_sound(sb_sentinel)
		if(audio_is_playing(sb_titan)){
			audio_resume_sound(sb_titan)
		}else{
			audio_play_sound(sb_titan, 1, true);
		}
		break;
	case RoomPersonagensInfo:
		audio_resume_sound(sb_titan)
		break;
	case RoomTutorial:
		audio_resume_sound(sb_titan);
		break;
	case Room1:
		audio_stop_sound(sb_titan);
		audio_play_sound(sb_undertow, 1, true);
		break;
	case Room2:
		audio_resume_sound(sb_undertow);
		break
	case Room3:
		audio_stop_sound(sb_undertow);
		audio_play_sound(sb_sentinel, 1, true);
		break;
	case RoomEncerramento:
		audio_resume_sound(sb_sentinel);
		break;
}


//if (room == RoomMenu) {
//    audio_play_sound(sb_titan, 1, true);  // Inicia a música
//} else if (room == Room1) {
//	audio_stop_sound(sb_titan);
//    audio_play_sound(sb_undertow, 1, true);
//} else if (room == Room2) {
//	audio_resume_sound(sb_undertow);
//} else if (room == Room3) {
//	audio_stop_sound(sb_undertow);
//    audio_play_sound(sb_sentinel, 1, true);
//}