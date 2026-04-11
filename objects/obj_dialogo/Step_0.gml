// No Mobile, usamos o 'mb_left' para detectar o toque na tela
var _toque_tela = device_mouse_check_button_pressed(0, mb_left);

if (_toque_tela) {
    if (caractere_atual >= string_length(texto[indice])) {
        indice++;
        caractere_atual = 0;
        
        if (indice >= array_length(texto)) {
            instance_destroy();
        }
    } else {
        // Pula a animação se tocar enquanto o texto ainda está "escrevendo"
        caractere_atual = string_length(texto[indice]);
    }
}
// No obj_dialogo -> Evento Step (quando as frases acabam)
if (indice >= array_length(texto)) {
    global.conversa_professor = true; // Libera o pergaminho
    instance_destroy();
}