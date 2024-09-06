/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

if vida <= 0 {
	repeat(3){
		var _offset_x = random_range(-16, 16);
		var _offset_y = random_range(-16, 16);
		
		instance_create_depth(x + _offset_x, y + _offset_y, 0, obj_inimigo);
	}
	instance_destroy();
}
