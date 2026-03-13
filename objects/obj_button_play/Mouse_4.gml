/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1C365D10
/// @DnDArgument : "code" "// Inherit the parent event$(13_10)event_inherited();$(13_10)$(13_10)room_goto(mr_game);"
// Inherit the parent event
event_inherited();

room_goto(mr_game);

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 7A71A7F2
event_inherited();

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 108B3189
/// @DnDArgument : "room" "mr_game"
/// @DnDSaveInfo : "room" "mr_game"
room_goto(mr_game);