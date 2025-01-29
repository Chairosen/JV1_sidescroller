var yLimite = 32;
var dashSpeed = hspeed*50;
var SpacePressed = keyboard_check_pressed(vk_space);
var botCollide = collision_line(x-32,y+32,x+32,y+32,O_Collider,0,true);
var topCollide = collision_line(x-32,y-32,x+32,y-32,O_Collider,0,true);
var sideCollid = collision_line(x+32,y+29,x+32,y-28,O_Collider,0,true);
var QDown = keyboard_check(ord("Q"));
var DDown = keyboard_check(ord("D"));
var shiftPressed = keyboard_check_pressed(vk_shift);

if (SpacePressed)
{
	GravityForce = -GravityForce;
	image_yscale = -image_yscale;
	if (GravityForce > 0)
	{
		gravityInversed = false;
		y += 3;
	}
	else if (GravityForce < 0)
	{
		gravityInversed = true
		y -= 3;
	}
	show_debug_message(gravityInversed);
}

if (botCollide || topCollide)
{
	vspeed = 0;
}
else
{
	vspeed = GravityForce
}

if (DDown)
{
	image_xscale = 1;
	hspeed = walkspeed;
	image_speed = 0;
}
if (QDown)
{
	image_xscale = -1;
	hspeed = -walkspeed;
	image_speed = 0;
}
if (shiftPressed)
{
	hspeed += dashSpeed;
	alarm_set(0,2);
}

if (sideCollid)
{
	hspeed = 0;
}

if (!DDown)
{
	if (!QDown)
	{
		hspeed = 0;
		image_speed = 1;
	}
}

switch (Lives)
{
	case 0: draw_sprite(S_Life,3,x,y);
	case 1: draw_sprite(S_Life,2,x,y);
	case 2: draw_sprite(S_Life,1,x,y);
	case 3: draw_sprite(S_Life,0,x,y);
	
	break;
}