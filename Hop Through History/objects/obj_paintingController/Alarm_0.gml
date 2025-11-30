if !global.paintingPlayed {
	room_goto(rm_transition)
	global.paintingPlayed = true
	exit
}

global.zoneSize -= .1
global.zoneSize = clamp(global.zoneSize, .2, .8)

event_inherited()
