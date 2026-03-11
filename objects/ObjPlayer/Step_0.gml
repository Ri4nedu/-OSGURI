// 1. INPUTS
_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
_left  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
_jump  = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W")) || keyboard_check(vk_up);


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

// 6. LÓGICA DE ANIMAÇÃO (Incluindo Pulo e Queda)
if (place_meeting(x, y + 1, g)) {
    // --- NO CHÃO ---
    if (hsp != 0) {
        // Se está se movendo, reseta o timer e muda o sprite
        tempo_para_idle = tempo_espera; 
        
        if (hsp > 0) sprite_index = RunRigPlayer;
        else sprite_index = RunLefPlayer;
    } else {
        // Lógica do Vácuo de Tempo para o Idle
        if (tempo_para_idle > 0) {
            tempo_para_idle -= 1; 
        } else {
            sprite_index = idlePlayer;
        }
    }
} else {
    // --- NO AR (Pulo ou Queda) ---
    sprite_index = JumpPlayer;
    
    // Opcional: Se quiser que ele olhe para o lado certo no ar
    if (hsp > 0) image_xscale = 1;
    if (hsp < 0) image_xscale = -1;
    
    // Reseta o timer de idle para que, ao cair, ele não entre em idle instantaneamente
    tempo_para_idle = tempo_espera;
}

// 7. ARREDONDAMENTO FINAL
x = round(x);
y = round(y);