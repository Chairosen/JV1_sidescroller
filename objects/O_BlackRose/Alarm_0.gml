var xLimit = 160;
var yLimit = 160;
if (instance_exists(O_Player))
{
	instance_create_layer(x,y+32,"Environment_Death",O_Particle);
	if (O_Player.x <= xLimit || -xLimit <=O_Player.x  || O_Player.y <= yLimit || -yLimit <= O_Player.y){
		alarm_set(0,15);
	}
}