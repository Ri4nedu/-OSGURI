// 1. INPUTS
_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
_left  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
_jump  = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));

// 2. VELOCIDADES
_move = _right - _left;
hsp = _move * v_spd;
vsp += v_grav;

// 3. PULO
if (place_meeting(x, y + 1, g)) {
    if (_jump) vsp = v_jump;
}

// 4. MOVIMENTO HORIZONTAL (Método Repeat - Anti-Trava)
repeat(abs(hsp)) {
    if (!place_meeting(x + sign(hsp), y, g)) {
        x += sign(hsp);
    } else {
        hsp = 0;
        break;
    }
}

// 5. MOVIMENTO VERTICAL
repeat(abs(vsp)) {
    if (!place_meeting(x, y + sign(vsp), g)) {
        y += sign(vsp);
    } else {
        vsp = 0;
        break;
    }
}

// 6. LÓGICA DO VÁCUO DE TEMPO (ANIMAÇÃO)
if (place_meeting(x, y + 1, g)) {
    if (hsp != 0) {
        // Se está se movendo, reseta o timer e muda o sprite na hora
        tempo_para_idle = tempo_espera; 
        
        if (hsp > 0) sprite_index = RunRigPlayer;
        else sprite_index = RunLefPlayer;
    } else {
        // Se parou de se mover, começa a contagem regressiva
        if (tempo_para_idle > 0) {
            tempo_para_idle -= 1; 
            // Enquanto o tempo não acaba, ele mantém o último sprite de corrida
        } else {
            // Só quando o tempo zera, ele volta para o Idle
            sprite_index = idlePlayer;
        }
    }
}

// 7. ARREDONDAMENTO FINAL
x = round(x);
y = round(y);