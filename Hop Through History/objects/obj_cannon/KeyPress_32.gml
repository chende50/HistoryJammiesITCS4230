if !cooldown and active
{
	instance_create_layer(x, y, "Instances", obj_projectile)
	cooldown = true
	alarm[0] = 30
}