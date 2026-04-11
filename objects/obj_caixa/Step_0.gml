if (global.conversa_professor == true) {
    if (device_mouse_check_button_pressed(0, mb_left)) {
        if (position_meeting(device_mouse_x(0), device_mouse_y(0), id)) {
            // Cria o pergaminho na mesma posição da caixa antes de sumir
            instance_create_layer(x, y, "Instances", obj_pergaminho);
            instance_destroy(); // Destrói a caixa
        }
    }
}