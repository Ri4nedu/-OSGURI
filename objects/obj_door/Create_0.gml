/// @description Configurar Porta Inteligente
// Variáveis configuráveis no editor (Instance Variables)
target_room = -1; // Sala de destino
target_x = 0;      // Posição de spawn (calculada automaticamente)
target_y = 0;

// Controle de transição
fade_alpha = 0;
fade_speed = 0.05;
is_transitioning = false;

// Sprite e Colisão
sprite_index = spr_door;
image_speed = 0;
