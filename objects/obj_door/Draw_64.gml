/// @description Desenhar Fade de Transição na GUI
if (fade_alpha > 0) {
    draw_set_alpha(fade_alpha);
    draw_set_color(c_black);
    
    // Desenhar retângulo cobrindo toda a tela GUI
    var _w = display_get_gui_width();
    var _h = display_get_gui_height();
    draw_rectangle(0, 0, _w, _h, false);
    
    draw_set_alpha(1.0);
    draw_set_color(c_white);
}
