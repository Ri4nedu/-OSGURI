// VELOCIDADE E MOVIMENTO
hsp = 0;
vsp = 0;
v_grav = 0.5;
v_jump = -7;
v_spd = 3;

// ESTADOS E SPAWN
image_xscale = 1;
xstart = x;
ystart = y;
pulando = false;

// SISTEMA DE VIDA (NOVO)
max_hp = 3;
hp = max_hp;
inv_timer = 0; // Timer de invencibilidade após dano

// CONFIGURAÇÕES DO JOYSTICK ANALÓGICO
base_x = 220; 
base_y = display_get_gui_height() - 220; 
joy_x = base_x;
joy_y = base_y;
joy_ativo = -1;
raio_max = 100;
raio_toque = 150;
_move = 0;
_moveY = 0;
_jump = 0;

vencendo = false;
pode_entrar = false;
alpha_preto = 0;
timer_colisao = -1; // -1 significa que o timer ainda não começou
// Raio de alcance da fala (em pixels)
var _raio_interacao = 20; 
global.conversa_professor = false; // Começa como falso
// spawn ao entrar na room
if (variable_global_exists("target_room")) {
    if (room == global.target_room) {
        x = global.spawn_x;
        y = global.spawn_y;
    }
}

// estado
vencendo = false;