for (i = 0; i < global.portals; i++)
{
	draw_sprite(spr_portalPLaceholder, 0, 32 + (128 * i), room_height - sprite_get_height(spr_portalPLaceholder))
}

draw_set_font(f_big)
draw_set_halign(fa_left)
draw_text(50, 100, "Score: " + string(score))
draw_text(50, 150, "Multiplier: " + string(global.multiplier) + "x")

with obj_gameController{
 scr_displayGame(next_game)
}

