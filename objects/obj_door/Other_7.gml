image_speed = 0;
image_index = image_number - 1; // Trava aberta

// Avisa o player que a entrada está liberada
if (instance_exists(obj_player)) {
    obj_player.pode_entrar = true;
}