// Desenha o fundo/base (estático)
// Substitua 'spr_joystick_fundo' pelo nome da sua sprite de base
draw_sprite_ext(spr_joystick_fundo, 0, base_x, base_y, 1, 1, 0, c_white, 0.5);

// Desenha a bolinha/manche (segue o joy_x e joy_y)
// Substitua 'spr_joystick_manche' pelo nome da sua sprite de seta ou círculo central
draw_sprite_ext(spr_joystick_manche, 0, joy_x, joy_y, 1, 1, 0, c_white, 0.8);