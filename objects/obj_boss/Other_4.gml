/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(room == Room3){
	if(textBoxBoss == noone){
		textBoxBoss = instance_create_layer(x, y, "Text", obj_textbox);
		textBoxBoss.text = textBoss;
		textBoxBoss.creator = self;
		textBoxBoss.name = myName;
		global.dialogo_ativo = true;
	}
} else {
	if(textBoxBoss != noone){
		instance_destroy(obj_textbox);
	}
}