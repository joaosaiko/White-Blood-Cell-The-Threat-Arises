/// @description Inserir descrição aqui
// Verifica se está na Room3 e se o diálogo ainda não foi exibido
if (room == Room3 && !dialogo_exibido) {
    instance_create_layer(x, y, "GUI", obj_dialogo);
    dialogo_exibido = true; // Marca que o diálogo foi exibido
}
