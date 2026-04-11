// Lista de mensagens
texto = ["Olá! Bem-vindo ao jogo.", "Este é um sistema de fala simples.", "Pressione Espaço para continuar..."];

// Controle do sistema
indice = 0; // Qual frase estamos lendo
caractere_atual = 0; // Para o efeito de "maquina de escrever"
velocidade_texto = 0.5; // Velocidade que as letras aparecem
// Define uma área na parte inferior da tela para o toque
var _gui_h = display_get_gui_height();
var _gui_w = display_get_gui_width();

// Criamos uma tecla virtual que mapeia um toque na área da caixa para a tecla "Espaço"
// Argumentos: x, y, largura, altura, tecla_mapeada
v_key_dialogo = virtual_key_add(0, _gui_h - 200, _gui_w, 200, vk_space);