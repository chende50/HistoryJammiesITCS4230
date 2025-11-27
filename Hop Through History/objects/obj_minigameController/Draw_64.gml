for (i = 0; i < global.portals; i++)
{
	draw_sprite(spr_portalPLaceholder, 0, 32 + (128 * i), room_height - sprite_get_height(spr_portalPLaceholder))
}

draw_set_font(f_big)
draw_set_halign(fa_left)
draw_text(60, 132, "Score: " + string(score))

draw_healthbar(50, 50, 1870, 75, ((alarm[0] / time) * 100), c_blue, c_blue, c_blue, 0, false, true)