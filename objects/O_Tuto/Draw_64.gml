//var text = "Bienvenue sur cette planète inexplorée.\nJe suis parvenu à localiser la cargaison qui est tombée de votre vaisseau. Elle se trouve à l'Est.\nCourage Soldat.";
draw_set_color(c_black);
draw_set_font(Font1);
draw_sprite(S_Message,0,288,150);
draw_text_ext_transformed(288,150,O_Player.text,32,700,1.5,1.5,0);
draw_sprite(S_Colonnel,0,32,128);