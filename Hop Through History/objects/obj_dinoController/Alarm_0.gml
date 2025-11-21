//Timer for game length

//Clamp difficulty variables
clamp(global.meteorRate, 10, 30)
clamp(global.meteorSpeed, 2, 8)

//Increment difficulty once timer runs out
global.meteorRate -= 5
global.meteorSpeed += 1

event_inherited();



