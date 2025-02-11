/*switch (other.tag)
{
	case "Intro" :
		//instance_create_layer(x+35,y-8,"Player",O_Tuto);
		instance_destroy(other);
	/*case "End" :
		instance_create_layer(x,y,"Player",O_Cinematic);
		instance_destroy();
	case _:
		break;
}*/
if (other.tag == "Intro"){
	text = "Bienvenue sur cette planète inexplorée.\nJe suis parvenu à localiser la cargaison qui est tombée de votre vaisseau. Elle se trouve à l'Est.\nCourage Soldat.";
	instance_create_layer(x,y,"Player",O_Tuto);
	instance_destroy(other);
	alarm[3] = 240;
}
if (other.tag == "End")
{
	instance_create_layer(x,y,"Player",O_Cinematic);
	instance_destroy();
}