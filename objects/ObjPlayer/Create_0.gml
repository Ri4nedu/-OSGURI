hsp = 0;
vsp = 0;
v_grav = 0.5;
v_jump = -8;
v_spd = 3;

_right = 0;
_left = 0;
_jump = 0;
_move = 0;

// Variável para o vácuo de tempo
tempo_para_idle = 0; 
tempo_espera = 10; // Quantos frames esperar (15 frames = 1/4 de segundo)
//ò seus fudido daqui pra baixo é os controle
virtual_key_add(150,500,100,100, vk_right);

virtual_key_add(20,500,100,100, vk_left);
virtual_key_add(55,500,100,100, vk_up);