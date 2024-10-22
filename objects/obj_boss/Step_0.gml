if(!global.dialogo_ativo){
script_execute(estado);
}

if vida <= 0 {
	obj_personagem.xp += 60;
	instance_destroy();
}