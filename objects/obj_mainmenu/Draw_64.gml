// 1. Pega o tamanho da tela do celular automaticamente
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

// 2. Configurações de texto
draw_set_font(ft_menu); // Certifique-se de que criou a fonte 'fnt_menu'
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// 3. Calcula a posição vertical para centralizar o bloco de botões
var _total_h = (array_length(opcoes) * (altura_botao + espacamento)) - espacamento;
var _y_inicial = (_gui_h / 2) - (_total_h / 2);

// 4. Desenha os botões e checa o toque
for (var i = 0; i < array_length(opcoes); i++) {
    
    // Define as bordas do botão atual
    var _x1 = (_gui_w / 2) - (largura_botao / 2);
    var _y1 = _y_inicial + (i * (altura_botao + espacamento));
    var _x2 = _x1 + largura_botao;
    var _y2 = _y1 + altura_botao;
    
    // Desenha o retângulo (fundo do botão)
    draw_set_color(c_black);
    draw_set_alpha(0.5); // Meio transparente para ficar moderno
    draw_rectangle(_x1, _y1, _x2, _y2, false);
    
    // Desenha a borda do botão
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_rectangle(_x1, _y1, _x2, _y2, true);
    
    // Escreve o texto centralizado no botão
    draw_text((_x1 + _x2) / 2, (_y1 + _y2) / 2, opcoes[i]);
    
    // --- LÓGICA DE CLIQUE ---
    if (device_mouse_check_button_pressed(0, mb_left)) {
        var _mx = device_mouse_x_to_gui(0);
        var _my = device_mouse_y_to_gui(0);
        
        // Se tocar dentro deste botão
        if (point_in_rectangle(_mx, _my, _x1, _y1, _x2, _y2)) {
            // Se for o primeiro botão (JOGAR), vai para a próxima sala
            if (i == 0) {
                if (room_next(room) != -1) {
                    room_goto_next();
                }
            } 
            // Se for o último botão (SAIR), fecha o jogo
            else if (i == 2) {
                game_end();
            }
        }
    }
}

// Limpa as configurações para não afetar outros objetos
draw_set_halign(fa_left);
draw_set_valign(fa_top);