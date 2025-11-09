alarm[0] = time

with obj_gameController 
{
	current_game = next_game
	next_game = scr_nextGame(current_game)
}