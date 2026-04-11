var _dados_video = video_draw();
var _status = _dados_video[0];

// Se o status for 0, o vídeo está passando na tela
if (_status == 0) {
    video_comecou = true; // Agora sabemos que o vídeo iniciou!
    
    var _surface_video = _dados_video[1];
    draw_surface_stretched(_surface_video, 0, 0, display_get_gui_width(), display_get_gui_height());
}

// SÓ VAI PARA A PRÓXIMA SALA SE:
// 1. O vídeo já tiver começado (video_comecou == true)
// 2. E agora o status indica que ele parou ou fechou
if (video_comecou) {
    if (_status == -1 || video_get_status() == video_status_closed) {
        if (room_next(room) != -1) {
            room_goto_next();
        }
    }
}