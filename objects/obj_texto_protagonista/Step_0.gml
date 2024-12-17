/// @description Insert description here
// You can write your code in this editor
if(room == Room2){
	// Todos os inimigos foram derrotados
	if(instance_number(obj_inimigo) == 0 && instance_number(obj_inimigo_grande) == 0){
		if(textBoxProtagonista == noone){
			textBoxProtagonista = instance_create_layer(x, y, "Text", obj_textbox);
			textBoxProtagonista.text = textProtagonista;
			textBoxProtagonista.creator = self;
			textBoxProtagonista.name = NameProtagonista;
			global.dialogo_ativo = true;
		}
	}
} else {
	if (textBoxProtagonista != noone){
		instance_destroy(obj_textbox);
	}
}