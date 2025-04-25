action = 0;
scene_info = -1;
timer = 0
x_dest = -1;
y_dest = -1;
layer_alpha = 0;
layer_rest_alpha = true
lerp_val = 0;
inst_id[0] = id
cur_dia_sprite = 0;
allow_preload = false;

text_qnt = 0;

msg_add = 0;
questionadd = 0;
char_add = 0;

if (instance_exists(obj_overworld_controller)) {global.in_menu = false}
event_perform(ev_other,ev_user0);