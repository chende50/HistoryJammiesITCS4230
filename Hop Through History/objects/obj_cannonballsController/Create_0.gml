time = global.cannonballsTime
global.enemiesRemaining = 3

// Inherit the parent event
alarm[0] = time
game_over = false

with obj_gameController 
{
	current_game = next_game
	next_game = scr_nextGame(current_game)
}