//Reset global variables
global.cannonballsTime = 600
global.enemiesRemaining = 3

global.vasesTime = 600
global.numCorrect = 0

global.meteorRate = 30
global.meteorSpeed = 2

global.zoneSize = .4

global.seed = randomize()
global.portals = 3
global.winStreak = 0
global.multiplier = 1
score = 0

//Send to transition room
with obj_gameController
{
	room_goto(rm_transition)
}