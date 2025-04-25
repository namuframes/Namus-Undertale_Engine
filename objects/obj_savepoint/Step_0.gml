scr_inputs();
if (collision_rectangle(x-length,y-length,x+length,y+length, obj_mainchar, false, false))
{
	colliding = true;
} else {colliding = false};

if (z_timer > 0 && !instance_exists(obj_savehandler)) {z_timer--;}

if (accept_key_p && colliding && z_timer <= 0) 
{
	if (instance_exists(obj_mainchar) && obj_mainchar.state == mode.free) 
	{
		instance_create_layer(0, 0, layer_create(LAYERS.ui), obj_savehandler)
	}
	z_timer = 5
}