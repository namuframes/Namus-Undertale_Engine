if (global.intransition) and (!subtract_alpha)
{
	alpha += fadespeed
	if (alpha >= 1.4)
	{
		room_goto(dest)
		subtract_alpha = true
	}
}

if (subtract_alpha) and (alpha > 0)
{
	alpha -= fadespeed;
	if (instance_exists(obj_mainchar)) {obj_mainchar.face = facingdirec};
	if (alpha <= 0.50) {global.intransition = false}
	if (alpha <= 0) {instance_destroy(id)}
}