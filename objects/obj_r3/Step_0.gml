/// @description Lógica de Transição Manual

// 1. Detectar contato com o player
if (place_meeting(x, y, obj_player) && !ativado) {
    ativado = true;
    
    // Trava o player
    with(obj_player) {
        vencendo = true;
        hsp = 0;
        vsp = 0;
    }
}

// 2. Executar a transição
if (ativado) {
    if (timer_espera > 0) {
        timer_espera--;
    } else {
        alpha_preto += 0.05; // Velocidade do fade
        
        if (alpha_preto >= 1.2) {
            // Se você esqueceu de definir a sala, ele não faz nada (evita erro)
            if (sala_destino != noone) {
                room_goto(level1r3);
            }
        }
    }
}