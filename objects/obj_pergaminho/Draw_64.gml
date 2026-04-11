if (meu_alpha > 0) {
    // Calcula a posição Y atual com base no seno (cria o movimento suave)
    var _y_oscila = sin(timer_bounce) * 6; // O "6" define a altura do pulo
    
    // Aplica a transparência suave
    draw_set_alpha(meu_alpha);
    
    // Desenha o Sprite do pergaminho
    draw_sprite(sprite_index, image_index, x, y + _y_oscila);
    
    // Desenha o Texto de instrução acima dele
    draw_set_font(-1); // Substitua pelo nome da sua fonte se tiver uma
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    
    // Desenha o texto 40 pixels acima da posição flutuante
    draw_text(x, y + _y_oscila - 40, "Ler Pergaminho");
    
    // Reseta o alpha e o alinhamento para não afetar outros objetos
    draw_set_alpha(1);
    draw_set_halign(fa_left);
}