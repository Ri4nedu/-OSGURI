/// @description Lógica de Transição Manual

// 1. Detectar contato com o player
if (place_meeting(x, y, obj_player) && !ativado) {
    ativado = true;
    
    // Trava o player
    with(obj_player) {
        vencendo = true;
        hsp = 0;
        vsp = 0;
        
        // 👉 Jogadinha pro lado (ajuste conforme direção da porta)
        if (x < other.x) {
            x -= 8; // empurra pra esquerda
        } else {
            x += 8; // empurra pra direita
        }
    }
}

// 2. Executar a transição
if (ativado) {
    if (timer_espera > 0) {
        timer_espera--;
    } else {
        alpha_preto += 0.05; // Velocidade do fade
        
        if (alpha_preto >= 1.2) {
            if (sala_destino != noone) {
                room_goto(sala_destino);
            }
        }
    }
}