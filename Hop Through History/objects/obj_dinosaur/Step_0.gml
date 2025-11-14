if(keyboard_check(vk_left) || keyboard_check(ord("A"))){
	x -= move_speed
	image_xscale = 1
}

if(keyboard_check(vk_right) || keyboard_check(ord("D"))){
	x += move_speed
	image_xscale = -1
}

