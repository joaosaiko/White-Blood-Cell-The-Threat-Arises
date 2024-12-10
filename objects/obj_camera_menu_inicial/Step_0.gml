/// @description Insert description here
// You can write your code in this editor
/// @description Movimento da câmera

// Atualizar a posição X da câmera
camera_x += camera_speed * camera_direction;

// Checar os limites da sala
if (camera_x <= camera_min_x)
{
    camera_x = camera_min_x;
    camera_direction = 1; // Mudar direção para direita
}
else if (camera_x >= camera_max_x)
{
    camera_x = camera_max_x;
    camera_direction = -1; // Mudar direção para esquerda
}

// Aplicar a nova posição da câmera
camera_set_view_pos(camera, camera_x, camera_y);
