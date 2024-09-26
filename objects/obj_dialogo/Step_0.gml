/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Avançar o diálogo com a tecla ENTER
if (keyboard_check_pressed(vk_enter)) {
    pagina += 1;
    
    // Checar se chegamos ao fim do diálogo
    if (pagina >= array_length(texto)) {
		dialogo = false;
		global.dialogo = dialogo;
        instance_destroy(); // Se acabar o diálogo, destruímos o objeto de diálogo
    }
}