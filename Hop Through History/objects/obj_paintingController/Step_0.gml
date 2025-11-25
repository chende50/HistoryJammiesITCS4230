//increment timer
driftTimer++

//if timer is done
if(driftTimer >= driftFinalTime){
	//reset timer and final time
	driftTimer = 0
	driftFinalTime = random_range(60, 120)
	//pick new drift target to change direction
	driftTarget = random_range(-1, 1)
}

//equate the position between last drift and drift target based on speed
//this smoothes out the pointer's movement, removes jitter
drift = lerp(drift, driftTarget, driftSpeed)
balance += drift


if game_over
{
	//stop movement
	drift = 0
	playerForce = 0
	exit
}

//check for out of dangerzone
if(abs(balance) > dangerZone and !game_over){
	game_over = true
	instance_create_layer(960, 540, "Instances", obj_lose)
	alarm[2] = 120
}