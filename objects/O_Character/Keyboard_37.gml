/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 56F32B9D
/// @DnDArgument : "speed" "-walkspeed"
/// @DnDArgument : "type" "1"
hspeed = -walkspeed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 75C8E535
/// @DnDArgument : "x" "-2"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-32"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "O_Collider"
/// @DnDSaveInfo : "object" "O_Collider"
var l75C8E535_0 = instance_place(x + -2, y + -32, [O_Collider]);if ((l75C8E535_0 > 0)){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 67247242
	/// @DnDParent : 75C8E535
	/// @DnDArgument : "type" "1"
	hspeed = 0;}