//Global array of all minigames for use in selecting next game
global.roomArray = [
	[rm_cannonballs, obj_cannonballsController],
	[rm_dino, obj_dinoController], 
	[rm_painting, obj_paintingController], 
	[rm_vases, obj_vasesController]
]

//Set random seed for game
global.seed = randomize()

//Win streak counter and multiplier
global.winStreak = 0
global.multiplier = 1
global.highscore = 0

global.portals = 3
score = 0

//global variables for dino
global.meteorSpeed = 2
global.meteorRate = 30
global.dinoPlayed = false

//global variables for painting
global.zoneSize = .4
global.paintingPlayed = false

//global variable for cannonballs
global.cannonballsTime = 600
global.cannonballsPlayed = false

//global variables for vases
global.vasesTime = 600
global.vasesPlayed = false

//First game is randomly selected from array
next_game = scr_nextGame(current_game)

