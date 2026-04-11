/// @description Iniciar variáveis do jogador
// VELOCIDADE E MOVIMENTO
hsp = 0;
vsp = 0;
v_grav = 0.5;
v_jump = -7;
v_spd = 3;
can_move = true; // Controle para travar em transições/diálogos

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

// SISTEMA DE SPAWN POR PORTA
// Se entramos por uma porta na room anterior, recalcular posição de spawn
if (instance_exists(obj_door)) {
    var _inst_door = instance_nearest(x, y, obj_door);
    if (_inst_door != noone) {
        // Se temos variáveis de spawn global definidas
        if (variable_global_exists("spawn_x") && variable_global_exists("spawn_y")) {
            x = _inst_door.x + global.spawn_x;
            y = _inst_door.y + global.spawn_y;
            
            // Limpar variáveis para evitar spawns repetidos no lugar errado
            global.spawn_x = 0;
            global.spawn_y = 0;
        }
    }
}
