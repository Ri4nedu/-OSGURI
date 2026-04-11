// Configurações de Animação
timer_bounce = 0;       // Controla a oscilação do sobe e desce
meu_alpha = 0;          // Controla a transparência (0 = invisível, 1 = visível)
distancia_ativacao = 80; // Distância em pixels para o pergaminho aparecer

// Variável de controle (Certifique-se de que essa global seja ativada após a conversa)
global.conversa_concluida = false; 

// Garante que o sprite não anime se for um frame único
image_speed = 0;