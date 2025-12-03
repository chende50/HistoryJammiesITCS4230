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
	draw_text(960, 100, "Next Game: \n" + gameName)
	
	draw_set_font(f_big)
	draw_text(960, 700, "Controls:")
	if hasOtherControls
	{
		draw_sprite(controls, 0, 832, 880)
		draw_sprite(secondaryControls, 0, 1088, 880)
	}	
	else
	{
		draw_sprite(controls, 0, 960, 880)
	}
	
	draw_set_font(f_small)
	draw_text(960, 1000, "Press space to continue")
}