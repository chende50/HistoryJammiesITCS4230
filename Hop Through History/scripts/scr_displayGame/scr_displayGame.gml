function scr_displayGame(game){
	var gameName
	var controls
	
	switch(game) 
	{
		case rm_cannonballs:
			gameName = "Cruising Cannonballs"
			
		break
		
		case rm_dino:
			gameName = "Dino Disaster"
			
		break
		
		case rm_painting:
			gameName = "Painting Patience"
			
		break
		
		case rm_vases:
			gameName = "Various Vases"
			
		break
	}
	
	draw_set_font(f_bigger)
	draw_set_halign(fa_center)
	draw_text(960, 140, gameName)
}