var grid = global.grid_prof
var _num = instance_number(obj_depth_par);

ds_grid_resize(grid,2,_num);
var i = 0
with(obj_depth_par)
{
	if (!exception)
	{
		grid[# 0, i] = id;
		grid[# 1, i] = bbox_bottom;
		i++;
	}
}

ds_grid_sort(grid, 1, true);

for (var i = 0; i < ds_grid_height(grid); i++)
{
	var _inst = grid[# 0, i]
	with (_inst) {event_perform(ev_draw,0)}
}