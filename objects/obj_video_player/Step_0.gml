// Se o jogador tocar na tela, fecha o vídeo e avança
if (device_mouse_check_button_pressed(0, mb_left)) {
    video_close();
    if (room_next(room) != -1) {
        room_goto_next();
    }
}