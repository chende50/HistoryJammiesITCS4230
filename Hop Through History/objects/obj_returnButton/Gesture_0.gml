audio_stop_sound(sd_gameMusic)
if !audio_is_playing(sd_menuMusic)
{
	audio_play_sound(sd_menuMusic, 1, true)
}
room_goto(rm_startScreen)