/// @description Colisão com o chão
if (place_meeting(x, y + vspeed, Ground)) {
    instance_destroy();
}
