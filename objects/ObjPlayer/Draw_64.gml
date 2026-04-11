/// @description Desenhar Joystick e HUD de Vida
if (room == room01) exit; // Não desenhar no menu

// 1. DESENHAR JOYSTICK (Mobile)
draw_set_alpha(0.5);
draw_sprite_ext(spr_joystick_fundo, 0, base_x, base_y, 1, 1, 0, c_white, 0.5);
draw_sprite_ext(spr_joystick_manche, 0, joy_x, joy_y, 1, 1, 0, c_white, 0.8);
draw_set_alpha(1.0);

// 2. DESENHAR HUD DE VIDA
var _hud_x = 50;
var _hud_y = 50;
var _cor = c_red;

draw_set_color(c_black);
draw_rectangle(_hud_x, _hud_y, _hud_x + 200, _hud_y + 20, false);
draw_set_color(_cor);
draw_rectangle(_hud_x, _hud_y, _hud_x + (hp / max_hp) * 200, _hud_y + 20, false);
draw_set_color(c_white);
draw_text(_hud_x, _hud_y + 30, "HP: " + string(hp));
