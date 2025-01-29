/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 3F84F278
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "object" "O_Collider"
/// @DnDSaveInfo : "object" "O_Collider"
var l3F84F278_0 = instance_place(x + 0, y + 1, [O_Collider]);if ((l3F84F278_0 > 0)){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 17183D6B
	/// @DnDParent : 3F84F278
	/// @DnDArgument : "type" "2"
	vspeed = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 2FA177D9
	/// @DnDParent : 3F84F278
	var l2FA177D9_0;l2FA177D9_0 = keyboard_check_pressed(vk_space);if (l2FA177D9_0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 2FA32FB3
		/// @DnDParent : 2FA177D9
		/// @DnDArgument : "speed" "-20"
		/// @DnDArgument : "type" "2"
		vspeed = -20;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 15DD661D
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E97455D
	/// @DnDParent : 15DD661D
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "GravityForce"
	if(vspeed < GravityForce){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 0C63E528
		/// @DnDParent : 2E97455D
		/// @DnDArgument : "speed" "1"
		/// @DnDArgument : "speed_relative" "1"
		/// @DnDArgument : "type" "2"
		vspeed += 1;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 28F1D8FF
	/// @DnDParent : 15DD661D
	else{	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 40C31A61
		/// @DnDParent : 28F1D8FF
		/// @DnDArgument : "speed" "GravityForce"
		speed = GravityForce;}}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 053F7AB2
/// @DnDArgument : "key" "vk_left"
/// @DnDArgument : "not" "1"
var l053F7AB2_0;l053F7AB2_0 = keyboard_check(vk_left);if (!l053F7AB2_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6639E4A9
	/// @DnDParent : 053F7AB2
	/// @DnDArgument : "key" "vk_right"
	/// @DnDArgument : "not" "1"
	var l6639E4A9_0;l6639E4A9_0 = keyboard_check(vk_right);if (!l6639E4A9_0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 255DFEAA
		/// @DnDParent : 6639E4A9
		/// @DnDArgument : "type" "1"
		hspeed = 0;}}