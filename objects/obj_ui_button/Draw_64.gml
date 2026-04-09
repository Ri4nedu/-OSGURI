/// @description Desenhar botão na GUI
draw_self();

draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(color);

draw_text_transformed(x, y, button_text, scale, scale, 0);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
