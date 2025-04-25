if (instance_exists(dest_obj) && dest_obj != undefined)
{
	if (instance_exists(obj_mainchar))
	{
		obj_mainchar.x = dest_obj.x;
		obj_mainchar.y = dest_obj.y;
	}
}