/// @function scr_mobile_scaling()
/// @description Ajustar viewport e câmera para preencher a tela sem bordas pretas
function scr_mobile_scaling() {
    var _base_w = 1280; // Largura base do projeto
    var _base_h = 720;  // Altura base do projeto
    
    // Pegar a proporção da tela real do dispositivo
    var _aspect = display_get_width() / display_get_height();
    
    // Ajustar a resolução da GUI para o dispositivo real
    display_set_gui_size(display_get_width(), display_get_height());
    
    // Redimensionar a janela e a superfície da aplicação
    surface_resize(application_surface, display_get_width(), display_get_height());
    
    // Configurar a câmera para todas as salas
    for (var i = 0; i <= room_last; i++) {
        if (room_exists(i)) {
            room_set_view_enabled(i, true);
            room_set_viewport(i, 0, true, 0, 0, display_get_width(), display_get_height());
        }
    }
    
    // Mensagem de log para debug
    show_debug_message("Mobile Scaling: " + string(display_get_width()) + "x" + string(display_get_height()));
}
