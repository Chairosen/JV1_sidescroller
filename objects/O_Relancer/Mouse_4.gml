/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 72491DAC
/// @DnDArgument : "var" "context"
/// @DnDArgument : "value" ""end""
if(context == "end"){	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 3323A98A
	/// @DnDParent : 72491DAC
	game_restart();}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C0993E7
/// @DnDArgument : "var" "context"
/// @DnDArgument : "value" ""death""
if(context == "death"){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 2D763248
	/// @DnDParent : 1C0993E7
	/// @DnDArgument : "room" "Room1"
	/// @DnDSaveInfo : "room" "Room1"
	room_goto(Room1);}