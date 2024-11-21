/// @description Inserir descrição aqui
// Verifica se está na Room3 e se o diálogo ainda não foi exibido
if (room == Room3 && !dialogo_exibido) {
    instance_create_layer(x, y, "GUI", obj_dialogo);
    dialogo_exibido = true; // Marca que o diálogo foi exibido
	if(!global.boss_derrotado){
		instance_deactivate_object(obj_transicao_sala);
		global.estado_sala = false;
	}
}
