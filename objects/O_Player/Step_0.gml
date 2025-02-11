var dashSpeed = hspeed*75;
var SpacePressed = keyboard_check_pressed(vk_space);
var botCollide = collision_line(x-32,y+32,x+32,y+32,O_Collider,0,true);
var topCollide = collision_line(x-32,y-31,x+32,y-31,O_Collider,0,true);
var leftSideCollid = collision_line(x-35,y+28,x-35,y-28,O_Collider,0,true);
var rightSideCollid = collision_line(x+35,y+28,x+35,y-28,O_Collider,0,true);
var partCollision = collision_rectangle(x-32,y+32,x+32,y-32,O_Particle,0,true);
var QDown = keyboard_check(ord("Q"));
var DDown = keyboard_check(ord("D"));
var mouseLeft = mouse_check_button_pressed(mb_left);
var escape = keyboard_check_pressed(vk_escape);

hspeed = walkspeed;

if (rightSideCollid)
{
	walkspeed = 0;
}
if (leftSideCollid)
{
	walkspeed = 0;
}

//Gravity inversed
if (inversedPower)
{
	if (SpacePressed)
	{
		if (botCollide || topCollide)
		{
			GravityForce = -GravityForce;
			image_yscale = -image_yscale;
			energy -= 10;
			if (GravityForce > 0)
			{
				gravityInversed = false;
				y += 3;
			}
			else if (GravityForce < 0)
			{
				gravityInversed = true;
				y -= 3;
			}
		}
	}
}


//Controls
if (controlable)
{
	if (!rightSideCollid)
	{
		if (DDown)
		{
			sprite_index = S_PlayerWalk;
			image_xscale = 1;
			walkspeed = 2;
		}	
	}
	if (!leftSideCollid)
	{
		if (QDown)
		{
			sprite_index = S_PlayerWalk;
			image_xscale = -1;
			walkspeed = -2;
	
		}
	}
}

//Dash
if (dashPower)
{
	if (mouseLeft)
{
	if (energy == 100)
	{
		hspeed += dashSpeed;
		energy -= energy;
		alarm_set(0,2);
	}
}
}

//Collision & Gravity
if (partCollision)
{
	if (!Hit)
{
	Hit = true;
	x -= 32;
	alarm_set(1,60);
}
}
if (botCollide || topCollide)
{
	vspeed = 0;
}
else
{
	vspeed = GravityForce
}

//Energy bar
if (energy < 100)
{
	energy += 2
}

//Idle
if (!DDown)
{
	if (!QDown)
	{
		walkspeed = 0;
		sprite_index = S_PlayerIdle;
		image_speed = 1;
	}
}

//Life Manager
switch (Lives)
{
	case 0: draw_sprite(S_Life,3,O_Player.x,O_Player.y);
	case 1: draw_sprite(S_Life,2,O_Player.x,O_Player.y);
	case 2: draw_sprite(S_Life,1,O_Player.x,O_Player.y);
	case 3: draw_sprite(S_Life,0,O_Player.x,O_Player.y);
	
	break;
}

//Pause
/*
if (escape)
{
	
}*/