if (instance_exists(O_Lading))
{
	if ((O_Lading.x - x) > 16)
	{
		x += 2;
		sprite_index = S_PlayerWalk;
	}
	else
	{
		sprite_index = S_PlayerIdle;
		hspeed = 0;
		if (!alarmLaunch)
		{
			alarmLaunch = true;
			alarm_set(0,30);
		}
	}
}
