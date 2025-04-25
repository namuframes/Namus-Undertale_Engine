global.canmove = true;
global.nomove_cutscene = false;
global.ontop = false;
global.in_menu = false;
global.insave_menu = false;

input_delay = 1;

_x = (camera_get_view_x(view_camera[0]));
_y = (camera_get_view_y(view_camera[0]));
_w = camera_get_view_width(view_camera[0]);
_h = camera_get_view_height(view_camera[0]);
heartpos[0] = 0;
heartpos[1] = 0;
heartpos[2] = 1;

layer = layer_create(LAYERS.ui);

options = [
	"ITEM",
	"STAT"
]

curoption = 0;
option_selected = false;

//Inventory menu variables
curitem = 0;


function updateOnTop()
{
	//On top checker
	var checker_x = (camera_get_view_x(view_camera[0]) + 16)
	var checker_y = (camera_get_view_y(view_camera[0]) + 160)
	var checker_w = camera_get_view_width(view_camera[0])
	var checker_h = camera_get_view_height(view_camera[0])

	if (collision_rectangle(checker_x,checker_y,checker_x+checker_w-32,checker_y+checker_h-165,obj_mainchar,0,0)){
		global.ontop = true;
	} else {global.ontop = false};
}