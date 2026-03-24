
draw_set_font(ft_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var dist = 55; 

for (var i = 0; i < opmax; i++) {

    if (index == i) {
        draw_set_color(c_yellow);
    } else {
        draw_set_color(c_white);
    }

    draw_text(gui_largura / 2, (gui_altura / 2) + (i * dist), opcoes[i]);
}


draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);