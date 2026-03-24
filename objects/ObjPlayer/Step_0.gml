// 1. INPUTS
_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
_left  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
_jump  = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);

// 2. MOVIMENTO E GRAVIDADE
var _move = _right - _left;
hsp = _move * v_spd;
vsp += v_grav;

// 3. PULO (Checa se está no chão)
if (place_meeting(x, y + 1, g)) {
    if (_jump) {
        vsp = v_jump;
    }
}

// 4. DIREÇÃO DO SPRITE
if (hsp != 0) image_xscale = sign(hsp);

// 5. COLISÃO HORIZONTAL (Melhorada)
if (place_meeting(x + hsp, y, g)) {
    while (!place_meeting(x + sign(hsp), y, g)) {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

// 6. COLISÃO VERTICAL (Melhorada)
if (place_meeting(x, y + vsp, g)) {
    while (!place_meeting(x, y + sign(vsp), g)) {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

// 7. ANIMAÇÃO (Sua lógica de Delay para o Idle)
if (place_meeting(x, y + 1, g)) {
    if (hsp != 0) {
        tempo_para_idle = tempo_espera;
        sprite_index = RunPlayer;
    } else {
        if (tempo_para_idle > 0) {
            tempo_para_idle -= 1;
        } else {
            sprite_index = idlePlayer;
        }
    }
} else {
    tempo_para_idle = tempo_espera;
    sprite_index = JumpPlayer; 
}