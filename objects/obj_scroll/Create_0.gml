/// @description Iniciar Pergaminho da Quest
// Estado inicial: Invisível
visible = false;
global.dialogo_finalizado = false; // Variável global para controle da quest

// Animação de flutuação (Bouncing)
start_y = y;
bounce_speed = 0.05;
bounce_dist = 10;
bounce_timer = 0;

sprite_index = spr_pergaminhoA; // Sprite do pergaminho
image_speed = 0.5;
