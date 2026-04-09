/// @description Transição de sala ao colidir com o Player
if (place_meeting(x, y, ObjPlayer)) {
    // Transição simples: Ir para a próxima sala
    // No futuro, podemos adicionar um efeito de fade preto aqui
    if (room_next(room) != -1) {
        room_goto_next();
    }
}
