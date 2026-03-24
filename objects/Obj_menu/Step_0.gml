// Pegando os inputs (entradas)
var up    = keyboard_check_pressed(vk_up);
var down  = keyboard_check_pressed(vk_down);
var enter = keyboard_check_pressed(vk_enter);

// Lógica de navegação
if (up) {
    index--;
    if (index < 0) index = opmax - 1;
}

if (down) {
    index++;
    if (index > opmax - 1) index = 0;
}

// Lógica de execução
if (enter) {
    switch(index) {
        case 0: 
            // Vai direto para a sala mr_game
            room_goto(mr_game); 
            break;
            
        case 3:
            game_end();
            break;
    }
}