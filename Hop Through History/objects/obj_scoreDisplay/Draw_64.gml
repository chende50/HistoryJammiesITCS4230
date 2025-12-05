draw_set_halign(fa_center)
draw_set_font(f_bigger)
draw_set_color(c_white)
if room = rm_highscoreScreen
{
	draw_text(room_width/2, room_height/2, "Score: " + string(global.highscore))
} else {
	draw_text(room_width/2, room_height/16, "Score: " + string(score))
}