// 1. Efeito de flutuar (Bounce) constante
timer_bounce += 0.08; 

// 2. Lógica de proximidade
if (global.conversa_concluida) {
    if (instance_exists(obj_player)) {
        // Calcula a distância entre o pergaminho e o player
        var _dist = point_distance(x, y, obj_player.x, obj_player.y);
        
        if (_dist < distancia_ativacao) {
            // Player perto: aumenta o alpha suavemente (Fade In)
            meu_alpha = lerp(meu_alpha, 1, 0.1); 
        } else {
            // Player longe: diminui o alpha suavemente (Fade Out)
            meu_alpha = lerp(meu_alpha, 0, 0.1); 
        }
    }
}