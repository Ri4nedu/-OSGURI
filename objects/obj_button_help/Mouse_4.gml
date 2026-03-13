/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1C365D10
/// @DnDArgument : "code" "// Inherit the parent event$(13_10)event_inherited();$(13_10)$(13_10)if (instance_exists(obj_controls));$(13_10) {$(13_10)	instance_destroy(obj_controls); $(13_10) }$(13_10) $(13_10) else$(13_10) {$(13_10) instance_create_layer(room_width / 2, room_height - 100, "Instances", obj_controls);$(13_10) } $(13_10)	"
// Inherit the parent event
event_inherited();

if (instance_exists(obj_controls));
 {
	instance_destroy(obj_controls); 
 }
 
 else
 {
 instance_create_layer(room_width / 2, room_height - 100, "Instances", obj_controls);
 }

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 7A71A7F2
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 40575BF3
/// @DnDArgument : "obj" "obj_controls"
/// @DnDSaveInfo : "obj" "obj_controls"
var l40575BF3_0 = false;l40575BF3_0 = instance_exists(obj_controls);if(l40575BF3_0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2A55C856
	/// @DnDParent : 40575BF3
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 12F31D2A
else{	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7A9E4CE1
	/// @DnDParent : 12F31D2A
	/// @DnDArgument : "xpos" "room_width / 2"
	/// @DnDArgument : "ypos" "room_height - 100"
	/// @DnDArgument : "objectid" "obj_controls"
	/// @DnDSaveInfo : "objectid" "obj_controls"
	instance_create_layer(room_width / 2, room_height - 100, "Instances", obj_controls);}