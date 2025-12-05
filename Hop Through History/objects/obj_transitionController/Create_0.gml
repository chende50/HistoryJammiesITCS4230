audio_stop_sound(sd_menuMusic)
audio_play_sound(sd_transition, 1, false)
if !audio_is_playing(sd_gameMusic)
{
	audio_play_sound(sd_gameMusic, 1, true)
}