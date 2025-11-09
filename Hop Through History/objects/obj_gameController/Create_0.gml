//Global array of all minigames for use in selecting next game
global.roomArray = [
	[rm_cannonballs, obj_cannonballsController],
	[rm_dino, obj_dinoController], 
	[rm_painting, obj_paintingController], 
	[rm_shamisen, obj_shamisenController], 
	[rm_vases, obj_vasesController]
]

//First game is randomly selected from array
next_game = scr_nextGame(current_game)