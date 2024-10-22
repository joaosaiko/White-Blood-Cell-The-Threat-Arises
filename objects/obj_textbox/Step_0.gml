/// @description Inserir descrição aqui
if(keyboard_check_pressed(vk_space)){
	if(charCount < string_length(text[page])){
		charCount = string_length(text[page]);
	}
	
	else if(page+1 < array_length(text)){
		page += 1;
		charCount = 0;
	} else{
		instance_destroy();
		global.dialogo_ativo = false;
		creator.alarm[1] = 1
	}
}