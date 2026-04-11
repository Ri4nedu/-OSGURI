/// @description Desenhar Fade Preto
if (ativado && alpha_preto > 0) {
    draw_set_alpha(alpha_preto);
    draw_set_color(c_black);
    
    // Desenha em toda a interface
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    
    draw_set_alpha(1);
}