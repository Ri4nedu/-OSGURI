/// @description Inicializar sistema de diálogo
char_name = "Nome";
texts = ["Texto 1", "Texto 2"];
current_index = 0;
font = ft_menu;
padding = 40;
box_height = 250;
alpha = 0;
target_alpha = 1;
char_index = 0;
text_speed = 0.5;
current_text = "";

// Bloquear movimento do jogador durante o diálogo (opcional)
if (instance_exists(ObjPlayer)) {
    ObjPlayer.can_move = false;
}
