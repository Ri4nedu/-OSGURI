/// @description Lógica de Transição Mobile
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

// Detectar se o toque está sobre a porta e o player está perto
if (device_mouse_check_button_pressed(0, mb_left) && !is_transitioning) {
    if (position_meeting(_mx, _my, id) && distance_to_object(ObjPlayer) < 50) {
        if (room_exists(target_room)) {
            is_transitioning = true;
            
            // Travar o movimento do player
            if (instance_exists(ObjPlayer)) {
                ObjPlayer.hsp = 0;
                ObjPlayer.vsp = 0;
                ObjPlayer.can_move = false;
                
                // Detectar o lado da colisão para o spawn
                // Usamos a diferença de posição entre o player e o centro da porta
                var _diff_x = ObjPlayer.x - x;
                var _diff_y = ObjPlayer.y - y;
                var _offset = 64; // Distância segura da porta ao nascer
                
                // Salvar variáveis globais de spawn baseadas no lado de entrada
                if (abs(_diff_x) > abs(_diff_y)) {
                    // Colisão Horizontal (Esquerda/Direita)
                    global.spawn_x = (sign(_diff_x) * _offset); // Offset para o outro lado na nova room
                    global.spawn_y = 0; // Mantém a mesma altura relativa
                } else {
                    // Colisão Vertical (Cima/Baixo)
                    global.spawn_x = 0;
                    global.spawn_y = (sign(_diff_y) * _offset);
                }
                
                // Salvar a porta de origem para que a nova room saiba onde colocar o player
                global.target_door_name = object_get_name(object_index);
            }
        }
    }
}

// Gerenciar o Fade
if (is_transitioning) {
    fade_alpha += fade_speed;
    if (fade_alpha >= 1) {
        room_goto(target_room);
    }
} else {
    fade_alpha = max(0, fade_alpha - fade_speed);
}
