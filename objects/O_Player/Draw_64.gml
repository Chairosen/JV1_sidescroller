draw_healthbar(32,32,480,96,energy,c_gray,#949924,#f3ff00,0,1,1);

//Life Manager

switch (Lives)
{
	case 0: 
		draw_sprite(S_Life,3,(O_Player.x-camera_get_view_x(view_camera[0])),(O_Player.y-camera_get_view_y(view_camera[0])));
		break;
	case 1: 
		draw_sprite(S_Life,2,(O_Player.x-camera_get_view_x(view_camera[0])),(O_Player.y-camera_get_view_y(view_camera[0])));
		break;
	case 2: 
		draw_sprite(S_Life,1,(O_Player.x-camera_get_view_x(view_camera[0])),(O_Player.y-camera_get_view_y(view_camera[0])));
		break;
	case 3: 
		draw_sprite(S_Life,0,(O_Player.x-camera_get_view_x(view_camera[0])),(O_Player.y-camera_get_view_y(view_camera[0])));
		break;
}