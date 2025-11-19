sprites = [
	spr_vase0,
	spr_vase1,
	spr_vase2
]

sprite_index = sprites[irandom_range(0, array_length(sprites) - 1)]
//obj_option.targetSprite = sprite_index