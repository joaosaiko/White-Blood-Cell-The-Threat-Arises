/// @description Inserir descrição aqui
script_execute(estado);

if vida <= 0 {
	obj_personagem.xp += 60;
	instance_destroy();
}