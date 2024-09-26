/// @description Inserir descrição aqui
if(!global.dialogo){
	script_execute(estado);
}else{
}

if vida <= 0 {
	obj_personagem.xp += 60;
	boss_vivo = false;
	global.boss_derrotado = boss_vivo;
	instance_destroy();
}