if (global.dialogo_finalizado) {
    
    // Troca o sprite
    sprite_index = spr_pergaminhoF;
    image_index = 0;
    image_speed = 1;

    // Vai para a próxima sala
    room_goto(room6);
}