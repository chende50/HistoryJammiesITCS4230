function scr_nextGame(current){
	next = current 
	
	while(next == current)
	{
		next = global.roomArray[irandom_range(0, array_length(global.roomArray) - 1)][0]
	}
	

	return next
}