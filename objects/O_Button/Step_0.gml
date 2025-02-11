var topCollider = collision_line(x-32,y-45,x+32,y-45,O_Player,1,0);
if (topCollider && compteur < 9)
{
	show_debug_message(compteur);
	compteur += 1;
	image_index = compteur;
}

if (compteur == 9)
{
	instance_destroy(O_KAYOU);
}