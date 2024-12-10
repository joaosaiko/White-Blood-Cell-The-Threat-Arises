/// @description Insert description here
// You can write your code in this editor
/// @description Configuração inicial da câmera

// Variáveis da câmera
my_camera = camera_create();
camera_set_view_size(my_camera, 640, 360); // Ajuste conforme o tamanho desejado
view_camera[0] = my_camera;

camera_speed = 2; // Velocidade de movimento da câmera
camera_direction = 1; // Direção inicial: 1 para direita, -1 para esquerda

// Limites da sala
camera_min_x = 0;
camera_max_x = room_width - camera_get_view_width(my_camera);

// Posição inicial da câmera
camera_x = 0;
camera_y = 0;

// Aplicar posição inicial
camera_set_view_pos(my_camera, camera_x, camera_y);
