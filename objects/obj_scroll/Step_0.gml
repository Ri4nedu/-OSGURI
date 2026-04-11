/// @description Lógica da Quest e Flutuação
// 1. Controle de Visibilidade (Quest)
if (global.dialogo_finalizado) {
    visible = true;
}

// 2. Animação de Flutuação (Bouncing)
if (visible) {
    bounce_timer += bounce_speed;
    y = start_y + sin(bounce_timer) * bounce_dist;
}

// 3. Interação com o Player
if (visible && place_meeting(x, y, ObjPlayer)) {
    // Coletar pergaminho e ir para a sala final
    if (room_exists(room_objdog)) {
        room_goto(room_objdog);
    } else {
        // Fallback para uma sala existente caso room_objdog não exista
        if (room_exists(level1r2)) room_goto(level1r2);
    }
    
    // Opcional: Efeito visual ou sonoro aqui
    instance_destroy();
}
