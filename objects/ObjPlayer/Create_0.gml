// VELOCIDADE
hsp = 0;
vsp = 0;

v_grav = 0.5;
v_jump = -7;
v_spd = 20;

// INPUT
_right = 0;
_left = 0;
_jump = 0;
_move = 0;

// IDLE DELAY
tempo_para_idle = 0; 
tempo_espera = 10;

// DIREÇÃO INICIAL
image_xscale = 1;
spawn_x = x;
spawn_y = y;

// --- CONFIGURAÇÕES DO JOYSTICK ANALÓGICO ---
// --- POSIÇÃO DA BASE (SUAS TAGS) ---
base_x = 220; 
base_y = display_get_gui_height() - 220; 

// Posição da "bolinha" interna (manche)
joy_x = base_x;
joy_y = base_y;
joy_ativo = -1; // Armazena qual "dedo" (device) está tocando (-1 = nenhum)

raio_max = 100;    // Limite de movimento do manche
raio_toque = 150; // Área de ativação
// Velocidades e Variáveis de Movimento
hsp = 0;
vsp = 0;
v_grav = 0.5;
v_jump = -7;
v_spd = 3;

// Delay e Spawn
tempo_para_idle = 0; 
tempo_espera = 10;
image_xscale = 1;
xstart = x;
ystart = y;
pulando = false;