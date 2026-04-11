// Se o player encostar na porta e ela ainda estiver fechada
if (place_meeting(x, y, obj_player) && image_speed == 0 && image_index == 0) {
    image_speed = 1; // Inicia a animação de abrir
}