// VELOCIDADE
hsp = 0;
vsp = 0;

v_grav = 0.5;
v_jump = -7;
v_spd = 3;

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

// CONTROLES MOBILE
virtual_key_add(160,540,80,80, vk_right);
virtual_key_add(20,540,100,100, vk_left);
virtual_key_add(75,460,80,80, vk_up);