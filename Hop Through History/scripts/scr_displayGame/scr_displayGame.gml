function scr_displayGame(game){
	var gameName
	var controls
	var secondaryControls
	var hasOtherControls = false
	
	switch(game) 
	{
		case rm_cannonballs:
			gameName = "Cruising Cannonballs"
			controls = spr_arrows
			secondaryControls = spr_space
			hasOtherControls = true
		break
		
		case rm_dino:
			gameName = "Dino Disaster"
			controls = spr_arrows
		break
		
		case rm_painting:
			gameName = "Painting Patience"
			controls = spr_arrows
		break
		
		case rm_vases:
			gameName = "Various Vases"
			controls = spr_mouse
		break
	}
	
	draw_set_font(f_bigger)
	draw_set_halign(fa_center)
	draw_text(960, 140, "Next Game: " + gameName)
	
	draw_text(960, 400, "Controls:")
	if hasOtherControls
	{
		draw_sprite(controls, 0, 832, 650)
		draw_sprite(secondaryControls, 0, 1088, 650)
	}	
	else
	{
		draw_sprite(controls, 0, 960, 650)
	}
	
	draw_text(960, 800, "Press space to continue")
}