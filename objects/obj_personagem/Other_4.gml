/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(room == Room1){
	if(textBoxNarrador == noone){
		textBoxNarrador = instance_create_layer(x, y, "Text", obj_textbox);
		textBoxNarrador.text = textNarrador;
		textBoxNarrador.creator = self;
		textBoxNarrador.name = Name;
		global.dialogo_ativo = true;
	}
} else {
	if(textBoxNarrador != noone){
		instance_destroy(obj_textbox);
	}
}

sprite_index = spr_personagem_parado_direita;  // Define o sprite atual