// Configurar variáveis
fade_time = 0; // Tempo de progresso da transição
fade_speed = 1; // Velocidade da transição de fade
state = 0; // 0 = Fade in (imagem), 1 = Mantendo imagem, 2 = Fade out (imagem), 3 = Fade in (texto), 4 = Mantendo texto, 5 = Fade out (texto)
wait_counter = 0; // Contador para manter o tempo nos estados 1 e 4

// Configurações da imagem
image_width = 130; // Largura original da imagem
image_height = 64; // Altura original da imagem
scale_factor = 2; // Fator de escala (2x maior que o original)

image_x = (room_width - (image_width * scale_factor)) / 2; // Ajustar para centralizar a imagem aumentada
image_y = (room_height - (image_height * scale_factor)) / 2;

// Configurações do texto
text = "Produzido por joaosaiko"; // Texto que será exibido
text_width = string_width(text); // Calcula a largura do texto com base na fonte atual
text_height = string_height(text); // Calcula a altura do texto com base na fonte atual
text_x = (room_width - text_width) / 2; // Centraliza horizontalmente
text_y = (room_height / 2); // Posiciona verticalmente abaixo da imagem