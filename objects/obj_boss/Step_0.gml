/// @description Inserir descrição aqui
if(!global.dialogo){
	script_execute(estado);
}else{
}

if vida <= 0 {
	obj_personagem.xp += 60;
	instance_destroy();
}