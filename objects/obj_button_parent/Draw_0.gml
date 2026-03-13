/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 29FB1CB1
/// @DnDArgument : "code" "draw_self();$(13_10)$(13_10)draw_set_font(fnt_menu);$(13_10)$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_halign(fa_middle);$(13_10)$(13_10)draw_text(x, y, button_text);$(13_10)$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_halign(fa_top);"
draw_self();

draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_halign(fa_middle);

draw_text(x, y, button_text);

draw_set_halign(fa_left);
draw_set_halign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 03C8E05B
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 4B4DAD12
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7AC23936
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "button_text"
draw_text(x + 0, y + 0, string(button_text) + "");

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0CF6E2DF
draw_set_halign(fa_left);
draw_set_valign(fa_top);