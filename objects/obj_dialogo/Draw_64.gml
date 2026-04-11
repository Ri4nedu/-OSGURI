// Configurações visuais básicas
var _gui_largura = display_get_gui_width();
var _gui_altura = display_get_gui_height();
var _x = 50;
var _y = _gui_altura - 150;
var _largura_caixa = _gui_largura - 100;

// 1. Desenha o fundo da caixa (Retângulo simples)
draw_set_color(c_black);
draw_set_alpha(0.8);
draw_rectangle(_x, _y, _x + _largura_caixa, _y + 100, false);
draw_set_alpha(1.0);

// 2. Efeito de máquina de escrever
if (caractere_atual < string_length(texto[indice])) {
    caractere_atual += velocidade_texto;
}

// 3. Corta o texto para exibir apenas até o caractere atual
var _texto_exibir = string_copy(texto[indice], 1, floor(caractere_atual));

// 4. Desenha o texto
draw_set_color(c_white);
draw_text_ext(_x + 20, _y + 20, _texto_exibir, 20, _largura_caixa - 40);
// No Draw GUI do obj_dialogo, após desenhar o texto:
if (caractere_atual >= string_length(texto[indice])) {
    var _x_seta = _x + _largura_caixa - 30;
    var _y_seta = _y + 80;
    
    // Faz uma setinha piscar para indicar o toque
    if (floor(current_time / 500) % 2 == 0) {
        draw_set_color(c_yellow);
        draw_arrow(_x_seta, _y_seta, _x_seta, _y_seta + 10, 10);
    }
}