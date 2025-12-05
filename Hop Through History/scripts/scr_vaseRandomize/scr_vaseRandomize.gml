function scr_vaseRandomize(options){

	targetSprite = irandom_range(0, 4)
	indeces = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
	
	for (var i = 0; i < array_length(options); i++)
	{
		with options[i] {
			correct = false
		}
		randNum = irandom_range(0, array_length(indeces) - 1)
		options[i].image_index = indeces[randNum]
		array_delete(indeces, randNum, 1)
	}
	
	with options[targetSprite] {
		correct = true
	}
	targetSprite = options[targetSprite].image_index
	obj_vase.image_index = targetSprite
	
	audio_play_sound(sd_vaseClink, 1, false)
}