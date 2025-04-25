scr_inputs()

if (!variable_instance_exists(id, "Colobjects")) {Colobjects = array_create(0)} //Creating the array
if (array_length(Colobjects) < instance_number(obj_colision)) //Putting the object id in the Array
{
	with(obj_colision) {
		if (can_colide)	array_push(other.Colobjects, id) 
	}
}

switch(state)
{
	case mode.free:
		if (hsp == 0 && vsp == 0) && (!frisk_dance)
		{
			moving = false;
		} else {moving = true}

		if (moving)
		{
			image_speed = 1;	
		}
		else
		{
			if (round(image_index % 2) == 0)
			{
				image_index = 0;
				image_speed = 0;
			}
		}
	break;
}

if (state != mode.free) {frisk_dance = false}

