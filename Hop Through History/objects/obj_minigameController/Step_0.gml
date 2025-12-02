//change mulitplier based on current win streak
if global.winStreak >= 2 && global.winStreak < 5 {
	global.multiplier = 2	
} else if global.winStreak >= 5 {
	global.multiplier =	5
} else {
	global.multiplier = 1
}