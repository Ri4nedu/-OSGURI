/// @description Desenhar Caixa de Diálogo na GUI
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

var _box_x1 = 50;
var _box_y1 = _gui_h - box_height - 50;
var _box_x2 = _gui_w - 50;
var _box_y2 = _gui_h - 50;

// Fundo da caixa
draw_set_alpha(0.8 * alpha);
draw_set_color(c_black);
draw_rectangle(_box_x1, _box_y1, _box_x2, _box_y2, false);
draw_set_color(c_white);
draw_rectangle(_box_x1, _box_y1, _box_x2, _box_y2, true);

// Nome do personagem
draw_set_font(font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(_box_x1 + padding, _box_y1 + padding, char_name + ":");

// Texto (efeito de máquina de escrever)
draw_text_ext(_box_x1 + padding, _box_y1 + padding + 40, current_text, 30, _box_x2 - _box_x1 - (padding * 2));

draw_set_alpha(1.0);
