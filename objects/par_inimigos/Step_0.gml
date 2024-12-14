/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (instance_exists(obj_personagem)) {
	script_execute(estado);
}


depth = -y;

if (vida <= 0 && instance_exists(obj_personagem)) {
	obj_personagem.xp += 30;
	instance_destroy();
}