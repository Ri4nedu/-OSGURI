/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 076B6EC0
/// @DnDArgument : "code" "draw_set_halign(fa_center);$(13_10)draw_set_halign(fa_middle);$(13_10)$(13_10)draw_text(x, y, "Move with arrow keys /nShoot with mouse");$(13_10)$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_halign(fa_top);$(13_10)"
draw_set_halign(fa_center);
draw_set_halign(fa_middle);

draw_text(x, y, "Move with arrow keys /nShoot with mouse");

draw_set_halign(fa_left);
draw_set_halign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 542D28D8
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6068C8A0
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Move with arrow keys /nShoot with mouse""
draw_text(x + 0, y + 0, string("Move with arrow keys /nShoot with mouse") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 17D2CAB3
draw_set_halign(fa_left);
draw_set_valign(fa_top);