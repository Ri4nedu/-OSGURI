/// @description Desenhar apenas a Interface (HUD)
if (room == room01) exit; 

// 1. DESENHAR JOYSTICK
draw_sprite_ext(spr_joystick_fundo, 0, base_x, base_y, 1, 1, 0, c_white, 0.5);
draw_sprite_ext(spr_joystick_manche, 0, joy_x, joy_y, 1, 1, 0, c_white, 0.8);

// 2. DESENHAR HUD DE VIDA
var _hud_x = 50;
var _hud_y = 50;
draw_set_color(c_black);
draw_rectangle(_hud_x, _hud_y, _hud_x + 200, _hud_y + 20, false);
draw_set_color(c_red);
draw_rectangle(_hud_x, _hud_y, _hud_x + (hp / max_hp) * 200, _hud_y + 20, false);
draw_set_color(c_white);
draw_text(_hud_x, _hud_y + 30, "HP: " + string(hp));

// 3. TRANSICÃO DE TELA PRETA (Vitória)
if (vencendo && alpha_preto > 0) {
    draw_set_alpha(alpha_preto);
    draw_set_color(c_black);
    // Desenha em toda a tela da GUI
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);
}