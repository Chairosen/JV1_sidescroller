var compteur = 0;
var topCollider = collision_line(x-32,y-41,x+32,y-41,O_Player,1,0);
if (topCollider && compteur < 10)
{
	compteur += 1;
	image_index = compteur;
}

if (compteur == 10)
{
	instance_destroy()
}