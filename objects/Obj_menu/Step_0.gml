// 1. INPUTS DE TECLADO (Mantendo compatibilidade)
var up    = keyboard_check_pressed(vk_up);
var down  = keyboard_check_pressed(vk_down);
var enter = keyboard_check_pressed(vk_enter);

// 2. INPUTS DE TOUCH (Mobile)
if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);
    
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();
    var dist = 55; // Deve ser a mesma distância usada no Draw GUI
    
    // Loop para verificar se o toque foi em cima de alguma opção
    for (var i = 0; i < opmax; i++) {
        var yy = (gui_h / 2) + (i * dist);
        
        // Criamos uma "caixa" invisível ao redor do texto para detectar o toque
        // Consideramos 200px de largura e 40px de altura para facilitar o toque com o dedo
        if (point_in_rectangle(mx, my, gui_w/2 - 100, yy - 20, gui_w/2 + 100, yy + 20)) {
            if (index == i) {
                enter = true; 
            } else {
                index = i;  
            }
        }
    }
}


if (up) {
    index--;
    if (index < 0) index = opmax - 1;
}
if (down) {
    index++;
    if (index > opmax - 1) index = 0;
}

// 4. EXECUÇÃO
if (enter) {
    switch(index) {
        case 0: room_goto(mr_game); break;
        case 3: game_end(); break;
    }
}