// 1. Criar o efeito de flutuar usando a função Seno
timer_flutuar += 0.05;
var _offset_y = sin(timer_flutuar) * 10; // O texto vai subir e descer 10 pixels

// 2. Configurações de estilo
draw_set_font(-1); // Use o nome da sua fonte aqui se tiver uma criada
draw_set_halign(fa_center); // Centraliza o texto no X
draw_set_valign(fa_middle); // Centraliza o texto no Y

// 3. Desenhar uma sombra (opcional, para melhor leitura)
draw_set_color(c_black);
draw_text(x + 2, y + _offset_y + 2, texto);

// 4. Desenhar o texto principal
draw_set_color(cor);
draw_text(x, y + _offset_y, texto);

// 5. Resetar o alinhamento (boa prática)
draw_set_halign(fa_left);
draw_set_valign(fa_top);