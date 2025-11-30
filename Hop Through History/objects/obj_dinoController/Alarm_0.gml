//Timer for game length
if !global.dinoPlayed{
	room_goto(rm_transition)
	global.dinoPlayed = true
	exit
}
//Increment difficulty once timer runs out
global.meteorRate -= 5
global.meteorSpeed += 1

//Clamp difficulty variables
global.meteorRate = clamp(global.meteorRate, 10, 30)
global.meteroSpeed = clamp(global.meteorSpeed, 2, 8)

event_inherited();