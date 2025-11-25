// Inherit the parent event
event_inherited();

//decides size of danger zone in balance bar
dangerZone = maxBalance * global.zoneSize

balance = 0


drift = random_range(-.5, .5)
driftTarget = random_range(-1, 1)
driftSpeed = .005
driftTimer = 0
driftFinalTime = random_range(60, 120)
show_debug_message(global.zoneSize)