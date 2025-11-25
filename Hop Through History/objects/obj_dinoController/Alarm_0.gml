//Timer for game length

//Increment difficulty once timer runs out
global.meteorRate -= 5
global.meteorSpeed += 1

//Clamp difficulty variables
global.meteorRate = clamp(global.meteorRate, 10, 30)
global.meteroSpeed = clamp(global.meteorSpeed, 2, 8)

event_inherited();