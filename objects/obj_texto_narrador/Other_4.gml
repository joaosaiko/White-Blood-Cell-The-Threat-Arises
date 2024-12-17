/// @description Insert description here
// You can write your code in this editor
if(room == Room1){
	if(textBoxNarrador == noone){
		textBoxNarrador = instance_create_layer(x, y, "Text", obj_textbox);
		textBoxNarrador.text = textNarrador;
		textBoxNarrador.creator = self;
		textBoxNarrador.name = NameNarrador;
		global.dialogo_ativo = true;
	}
}
else {
	if(textBoxNarrador != noone){
		instance_destroy(obj_textbox);
	}
}