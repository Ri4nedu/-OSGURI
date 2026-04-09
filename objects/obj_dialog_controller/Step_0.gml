/// @description Lógica de diálogo e toque mobile
alpha = lerp(alpha, target_alpha, 0.1);

// Efeito de texto aparecendo (máquina de escrever)
if (char_index < string_length(texts[current_index])) {
    char_index += text_speed;
    current_text = string_copy(texts[current_index], 1, floor(char_index));
}

// Toque na tela (mobile) para avançar
if (device_mouse_check_button_pressed(0, mb_left)) {
    // Se o texto ainda está sendo escrito, completa ele imediatamente
    if (char_index < string_length(texts[current_index])) {
        char_index = string_length(texts[current_index]);
        current_text = texts[current_index];
    } else {
        // Se já completou, vai para o próximo texto da sequência
        current_index++;
        
        // Se terminaram os textos, destrói o controlador e libera o player
        if (current_index >= array_length(texts)) {
            if (instance_exists(ObjPlayer)) {
                ObjPlayer.can_move = true;
            }
            instance_destroy();
        } else {
            // Reinicia variáveis para o próximo texto
            char_index = 0;
            current_text = "";
        }
    }
}
