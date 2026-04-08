// ==========================
// 1. INPUT (JOYSTICK)
// ==========================
_move = 0;
_moveY = 0;
_jump = 0;

for (var i = 0; i < 4; i++) {
    var _mx = device_mouse_x_to_gui(i);
    var _my = device_mouse_y_to_gui(i);

    if (device_mouse_check_button_pressed(i, mb_left)) {
        if (point_distance(_mx, _my, base_x, base_y) < raio_toque) {
            joy_ativo = i;
        }
    }

    if (joy_ativo == i) {
        if (device_mouse_check_button(i, mb_left)) {
            var _dist = point_distance(base_x, base_y, _mx, _my);
            var _dir = point_direction(base_x, base_y, _mx, _my);
            
            var _dist_limitada = min(_dist, raio_max);
            joy_x = base_x + lengthdir_x(_dist_limitada, _dir);
            joy_y = base_y + lengthdir_y(_dist_limitada, _dir);
            
            // eixo horizontal e vertical
            _move  = lengthdir_x(1, _dir) * (_dist_limitada / raio_max);
            _moveY = lengthdir_y(1, _dir) * (_dist_limitada / raio_max);
        } else {
            joy_ativo = -1;
        }
    }
}

// Retorno suave do joystick
if (joy_ativo == -1) {
    joy_x = lerp(joy_x, base_x, 0.15);
    joy_y = lerp(joy_y, base_y, 0.15);
}

// ==========================
// 2. DETECTAR PULO (↑)
// ==========================
if (_moveY < -0.5) {
    _jump = 1;
} else {
    _jump = 0;
}

// ==========================
// 3. MOVIMENTO HORIZONTAL
// ==========================
hsp = _move * v_spd;

if (hsp != 0) {
    image_xscale = sign(hsp);
}

// ==========================
// 4. GRAVIDADE
// ==========================
vsp += v_grav;

// ==========================
// 5. PULO COM CONTROLE
// ==========================
if (place_meeting(x, y + 1, Ground)) {
    if (_jump && !pulando) {
        vsp = v_jump;
        pulando = true;
    }
}

// reset do pulo ao tocar no chão
if (place_meeting(x, y + 1, Ground)) {
    pulando = false;
} else {
    pulando = true;
}

// ==========================
// 6. COLISÃO HORIZONTAL
// ==========================
if (place_meeting(x + hsp, y, Ground)) {
    while (!place_meeting(x + sign(hsp), y, Ground)) {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

// ==========================
// 7. COLISÃO VERTICAL
// ==========================
if (place_meeting(x, y + vsp, Ground)) {
    while (!place_meeting(x, y + sign(vsp), Ground)) {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

// ==========================
// 8. ANIMAÇÕES
// ==========================
if (!place_meeting(x, y + 1, Ground)) {
    sprite_index = JumpPlayer;
}
else if (hsp != 0) {
    sprite_index = RunPlayer;
}
else {
    sprite_index = idlePlayer;
}

// ==========================
// 9. RESPAWN
// ==========================
if (y > room_height + 100) {
    x = xstart;
    y = ystart;

    hsp = 0;
    vsp = 0;
}