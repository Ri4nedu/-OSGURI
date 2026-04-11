// Verifica se viemos de uma transição de sala
if (variable_global_exists("player_start_x") && global.player_start_x != -1) {
    
    // Coloca o player na posição salva
    x = global.player_start_x;
    y = global.player_start_y;
    
    // IMPORTANTE: Empurra o player um pouco para fora do objeto de transição
    // para evitar que ele troque de sala instantaneamente de novo.
    if (room == level1r2) {
        // Se entrou na r2 vindo da r3, empurra para a ESQUERDA (exemplo)
        x -= 40; 
    } else if (room == level1r3) {
        // Se entrou na r3 vindo da r2, empurra para a DIREITA (exemplo)
        x += 40;
    }
    
    // Reseta as variáveis após usar
    vencendo = false; 
}