// Variáveis de movimentação
hsp = 0;        // Velocidade horizontal
vsp = 0;        // Velocidade vertical
v_grav = 0.5;   // Força da gravidade
v_jump = -10;   // Altura do pulo
v_spd = 4;      // Velocidade de corrida

mov = function()
{
    // 1. Inputs (Entradas)
    var _right = keyboard_check(vk_right) || keyboard_check(ord("D"));
    var _left  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
    var _jump  = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));

    // 2. Cálculo de movimento horizontal
    var _move = _right - _left;
    hsp = _move * v_spd;

    // 3. Gravidade e Pulo
    vsp = vsp + v_grav;

    // Checar se está no chão (obj_g) para pular
    if (place_meeting(x, y + 1, g)) && (_jump) {
        vsp = v_jump;
    }

    // 4. COLISÃO HORIZONTAL (com obj_g)
    if (place_meeting(x + hsp, y, g)) {
        while (!place_meeting(x + sign(hsp), y, g)) {
            x = x + sign(hsp);
        }
        hsp = 0;
    }
    x = x + hsp;

    // 5. COLISÃO VERTICAL (com obj_g)
    if (place_meeting(x, y + 1 + vsp, g)) {
        while (!place_meeting(x, y + sign(vsp), g)) {
            y = y + sign(vsp);
        }
        vsp = 0;
    }
    y = y + vsp;

    // 6. TROCA DE SPRITES (Animação)
    if (!place_meeting(x, y + 1, g)) {
        // Sprite de pulo aqui se você tiver (ex: sprite_index = JumpPlayer)
    } else {
        if (hsp != 0) {
            // Se estiver andando
            if (hsp > 0) sprite_index = RunRigPlayer; // Direita
            else sprite_index = RunLefPlayer;         // Esquerda
        } else {
            // Se estiver parado (coloque o nome do seu sprite de parado aqui)
            // sprite_index = IdlePlayer; 
        }
    }
}
