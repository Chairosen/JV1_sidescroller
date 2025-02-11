if ((O_Lading.x - x) > 16)
{
	hspeed = 2;
	sprite_index = S_PlayerWalk;
}
sprite_index = S_PlayerIdle;
hspeed = 0;

alarm[0] = 30;