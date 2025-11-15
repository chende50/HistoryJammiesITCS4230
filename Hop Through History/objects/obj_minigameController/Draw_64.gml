for (i = 0; i < global.portals; i++)
{
	draw_sprite(spr_portalPLaceholder, 0, 32 + (64 * i), room_height - sprite_get_height(spr_portalPLaceholder))
}

draw_text(32, 32, "Score: " + string(score))