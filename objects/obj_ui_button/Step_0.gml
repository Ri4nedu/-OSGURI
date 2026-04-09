/// @description Lógica de toque mobile
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

// Detectar se o mouse/toque está sobre o botão
if (position_meeting(_mx, _my, id)) {
    target_scale = 1.1;
    color = c_yellow;
    
    if (device_mouse_check_button_pressed(0, mb_left)) {
        clicked = true;
        target_scale = 0.9;
    }
    
    if (device_mouse_check_button_released(0, mb_left) && clicked) {
        if (is_exit) {
            game_end();
        } else if (room_exists(target_room)) {
            room_goto(target_room);
        }
        clicked = false;
    }
} else {
    target_scale = 1.0;
    color = c_white;
    if (device_mouse_check_button_released(0, mb_left)) {
        clicked = false;
    }
}

// Suavizar a escala
scale = lerp(scale, target_scale, 0.2);
image_xscale = scale;
image_yscale = scale;
