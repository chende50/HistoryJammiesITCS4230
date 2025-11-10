// Inherit the parent event
event_inherited();

//Clamp difficulty variables
clamp(difficultyScaling, 5, 60)
clamp(meteorSpeed, 10, 100)

//Increment difficulty once timer runs out
difficultyScaling -= 5
meteorSpeed += 10



