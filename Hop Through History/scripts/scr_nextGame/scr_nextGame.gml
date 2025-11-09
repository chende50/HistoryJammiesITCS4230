function scr_nextGame(current){
	next = current 
	
	while(next == current)
	{
		next = roomArray[irandom_range(0, array_length(roomArray))][0]
	}
	
	return next
}