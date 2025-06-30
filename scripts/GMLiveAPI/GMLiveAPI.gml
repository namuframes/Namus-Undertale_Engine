// Generated at 2024-05-24 23:09:21 (890ms) for v2.3+
/// @lint nullToAny true
// Feather disable all

if(live_enabled)
function __lnc__std_gml_NativeTypeHelper_isNumber(l_v){
	return (is_real(l_v)||is_bool(l_v)||is_int32(l_v))||is_int64(l_v);
}

if(live_enabled)
function live_preinit_init_funcs(){
	gml_func_add("gml_pragma(setting, ...)",function(){});
	var l_fm=ds_map_create();
	var l_fl=ds_list_create();
	var l_isJS=os_browser!=browser_not_a_browser;
	var l_func;
	if(!l_isJS)for(var l_i=0;l_i<10000;l_i++){
		var l_scr=l_i;
		var l_name=script_get_name(l_scr);
		if(string_ord_at(l_name,1)==60)break;
		if(string_length(l_name)>=64)l_name=string_copy(l_name,1,64);
		var l_fc=string_ord_at(l_name,1);
		if(l_fc==60)break;
		if(!(l_fc==95||l_fc>=97&&l_fc<=122||l_fc>=65&&l_fc<=90))continue;
		l_func=method(undefined,l_scr);
		var l_m={name:l_name,func:l_func,used:false}
		l_fm[?l_name]=l_m;
		ds_list_add(l_fl,l_m);
	}
	var l_jsDummy=(l_isJS?function(){}:undefined);
	var l_jsIndex=0;
	var l_lines=file_text_open_from_string("nameof=(name)&is_real=(val)#:bool&is_numeric=(val):&is_string=(val)#:bool&is_array=(val)#:bool&is_undefined=(val)#:bool&is_int32=(val)#:bool&is_int64=(val)#:bool&is_ptr=(val)#:bool&is_bool=(val)#:bool&is_nan=(val):&is_infinity=(val):&is_struct=(val):&is_method=(val):&is_instanceof=(struct, constructor_name):&is_callable=(val):&is_handle=(val):&static_get=(struct_or_func_name):&static_set=(struct, struct)&typeof=(val)#:bool&instanceof=(any)#:string&exception_unhandled_handler=(user_handler)&variable_global_exists=(name):&variable_global_get=(name):&variable_global_set=(name,val)&variable_instance_exists=(id,name):&variable_instance_get=(id,name):&variable_instance_set=(id,name,val)&variable_instance_get_names=(id):&variable_instance_names_count=(:any):int&variable_struct_exists=(struct,name):&variable_struct_get=(struct,name):&variable_struct_set=(struct,name,val)&variable_struct_get_names=(struct):&variable_struct_names_count=(struct):int&variable_struct_remove=(struct,name)&variable_get_hash=(name):&variable_clone=(var,[depth])&struct_exists=(struct,name):&struct_get=(struct,name):&struct_set=(struct,name,val)&struct_get_names=(struct):&struct_names_count=(struct)&struct_remove=(struct,name) &struct_foreach=(struct,func)&struct_get_from_hash=(struct,hash):&struct_set_from_hash=(struct,hash,val)&array_length=(value):int&array_equals=(one, two):&array_create=(size:number, ?value:any):array&array_copy=(dest,dest_index,src,src_index,length)&array_resize=(variable,newsize)&array_get=(variable,index):&array_set=(variable,index,val)&array_push=(array,val,...)&array_pop=(array)&array_shift=(array)&array_insert=(array,index,val,...)&array_delete=(array,index,number)&array_sort=(array,sortType_or_function)&array_shuffle=(array,[offset],[length])&array_shuffle_ext=(array,[offset],[length])&array_get_index=(array,value,[offset],[length]):&array_contains=(array,value,[offset],[length])&array_contains_ext=(array,values,[matchAll],[offset],[length])&array_first=(array)&array_last=(array)&array_create_ext=(size,function):&array_find_index=(array,function,[offset],[length]):&array_any=(array,function,[offset],[length])&array_all=(array,function,[offset],[length])&array_foreach=(array,function,[offset],[length])&array_reduce=(array,function,[init_value],[offset],[length])&array_filter=(array,function,[offset],[length])&array_filter_ext=(array,function,[offset],[length])&array_map=(array,function,[offset],[length])&array_map_ext=(array,function,[offset],[length])&array_copy_while=(array,function,[offset],[length])&array_unique=(array,[offset],[length])&array_unique_ext=(array,[offset],[length])&array_reverse=(array,[offset],[length])&array_reverse_ext=(array,[offset],[length])&array_concat=(...)&array_union=(...)&array_intersection=(...)&random=(x:number):number&random_range=(:number,:number):number&irandom=(x:number):int&irandom_range=(:number,:number):int&random_set_seed=(seed)&random_get_seed=():&randomize=():number&randomise=():number&abs=(x:number)#:number&round=(x:number)#:int&floor=(x:number)#:int&ceil=(x:number)#:int&sign=(x:number)#:int&frac=(x:number)#:number&sqrt=(x:number)#:number&sqr=(x:number)#:number&exp=(x:number)#:number&ln=(x:number)#:number&log2=(x:number)#:number&log10=(x:number)#:number&sin=(radian_angle:number)#:number&cos=(radian_angle:number)#:number&tan=(radian_angle:number)#:number&arcsin=(x:number)#:number&arccos=(x:number)#:number&arctan=(x:number)#:number&arctan2=(y:number, x:number)#:number&dsin=(degree_angle:number)#:number&dcos=(degree_angle:number)#:number&dtan=(degree_angle:number)#:number&darcsin=(x:number)#:number&darccos=(x:number)#:number&darctan=(x:number)#:number&darctan2=(y:number, x:number)#:number&degtorad=(x:number)#:number&radtodeg=(x:number)#:number&power=(x:number, n:number)#:number&logn=(n:number, x:number)#:number&mean=(...:number)#:number&median=(...:any)#:any&clamp=(val:number, min:number, max:number)#:number&lerp=(val1:number, val2:number, amount:number)#:number&dot_product=(x1:number, y1:number, x2:number, y2:number)#:&dot_product_3d=(x1:number, y1:number, z1:number, x2:number, y2:number, z2:number)#:&dot_product_normalised=(x1:number, y1:number, x2:number, y2:number)£#:&dot_product_3d_normalised=(x1:number, y1:number, z1:number, x2:number, y2:number, z2:number)£#:&dot_product_normalized=(x1:number, y1:number, x2:number, y2:number)$#:&dot_product_3d_normalized=(x1:number, y1:number, z1:number, x2:number, y2:number, z2:number)$#:&math_set_epsilon=(eps):&math_get_epsilon=():&angle_difference=(src:number, dest:number)#:number&point_distance_3d=(x1:number, y1:number, z1:number, x2:number, y2:number, z2:number)#:number&point_distance=(x1:number, y1:number, x2:number, y2:number)#:number&point_direction=(x1:number, y1:number, x2:number, y2:number)#:number&lengthdir_x=(len:number, dir:number)#:number&lengthdir_y=(len:number, dir:number)#:number&real=(val)#:number&bool=(val):&string=(val_or_template, ...)&int64=(val)#:int&ptr=(val):bool&handle_parse=(val_string)&string_format=(val:number,total:number,dec:number)#:string&chr=(val:int)#:string&ansi_char=(val)#:&ord=(char:string)#:int&method=(struct_ref_or_instance_id, func):&method_get_index=(method):&method_get_self=(method):&string_length=(str:string)#:int&string_byte_length=(str:string)#:int&string_pos=(substr:string, str:string)#:int&string_pos_ext=(substr:string, str:string, start:int)#:int&string_last_pos=(substr:string, str:string)#:int&string_last_pos_ext=(substr:string, str:string, start:int)#:int&string_copy=(str:string, index:int, count:int)#:string&string_char_at=(str:string, index:int)#:string&string_ord_at=(str:string, index:int)#:int&string_byte_at=(str:string, index:int)#:int&string_set_byte_at=(str:string, index:int, val:int)#:string&string_delete=(str:string, index:int, count:int)#:string&string_insert=(substr:string, str:string, index:int)#:string&string_lower=(str:string)#:string&string_upper=(str:string)#:string&string_repeat=(str:string, count:int)#:string&string_letters=(str:string)#:string&string_digits=(str:string)#:string&string_lettersdigits=(str:string)#:string&string_replace=(str:string, substr:string, newstr:string)#:string&string_replace_all=(str:string, substr:string, newstr:string)#:string&string_count=(substr:string, str:string)#:int&string_hash_to_newline=(:string)#:string&string_ext=(format,arg_array)&string_trim_start=(str, [substrs])&string_trim_end=(str, [substrs])&string_trim=(str, [substrs])&string_starts_with=(str,substr)&string_ends_with=(str,substr)&string_split=(str,delim,[remove_empty],[max_splits])&string_split_ext=(str,delim_array,[remove_empty],[max_splits])&string_join=(delim,...)&string_join_ext=(delim,val_array)&string_concat=(...)&string_concat_ext=(val_array,[offset],[length])&string_foreach=(str,func,[pos],[length])&clipboard_has_text=():&clipboard_set_text=(str)&clipboard_get_text=():&date_current_datetime=():date&date_create_datetime=(year,month,day,hour,minute,second):&date_valid_datetime=(year:int,month:int,day:int,hour:int,minute:int,second:int):date&date_inc_year=(:date,amount):date&date_inc_month=(:date,amount):date&date_inc_week=(:date,amount):date&date_inc_day=(:date,amount):date&date_inc_hour=(:date,amount):date&date_inc_minute=(:date,amount):date&date_inc_second=(:date,amount):date&date_get_year=(date):&date_get_month=(date):&date_get_week=(date):&date_get_day=(date):&date_get_hour=(date):&date_get_minute=(date):&date_get_second=(date):&date_get_weekday=(date):&date_get_day_of_year=(date):&date_get_hour_of_year=(date):&date_get_minute_of_year=(date):&date_get_second_of_year=(date):&date_year_span=(date1:date,date2:date):number&date_month_span=(date1:date,date2:date):number&date_week_span=(date1:date,date2:date):number&date_day_span=(date1:date,date2:date):number&date_hour_span=(date1:date,date2:date):number&date_minute_span=(date1:date,date2:date):number&date_second_span=(date1:date,date2:date):number&date_compare_datetime=(date1:date,date2:date):number&date_compare_date=(date1:date,date2:date):number&date_compare_time=(date1:date,date2:date):number&date_date_of=(:date):date&date_time_of=(:date):date&date_datetime_string=(:date):string&date_date_string=(:date):string&date_time_string=(:date):string&date_days_in_month=(:date):int&date_days_in_year=(:date):int&date_leap_year=(:date):bool&date_is_today=(:date):bool&date_set_timezone=(timezone)&date_get_timezone=():&game_set_speed=(value,type)&game_get_speed=(type):&motion_set=:(dir:number, speed:number)&motion_add=:(dir:number, speed:number)&place_free=:(x:number, y:number):bool&place_empty=:(x:number, y:number):bool&place_meeting=:(x:number, y:number, obj:index):&place_snapped=:(hsnap:number, vsnap:number):bool&move_random=:(hsnap:number, vsnap:number)&move_snap=:(hsnap:number, vsnap:number)&move_towards_point=:(x:number, y:number, sp:number)&move_contact_solid=:(dir:number, maxdist:number)&move_contact_all=:(dir:number, maxdist:number)&move_outside_solid=:(dir:number, maxdist:number)&move_outside_all=:(dir:number, maxdist:number)&move_bounce_solid=:(advanced:bool)&move_bounce_all=:(advanced:bool)&move_wrap=:(hor:bool, vert:bool, margin:number)&move_and_collide=:(dx,dy,obj,[num_iterations], [xoff],[yoff],[max_x_move],[max_y_move])&distance_to_point=:(x:number, y:number):number&distance_to_object=:(obj:index):number&position_empty=:(x:number, y:number):bool&position_meeting=:(x:number, y:number, obj:index):bool&path_start=:(path,speed,endaction,absolute)&path_end=:()&mp_linear_step=:(x:number,y:number,speed:number,checkall:bool):&mp_potential_step=:(x:number,y:number,speed:number,checkall:bool):&mp_linear_step_object=:(x:number,y:number,speed:number,obj:index):&mp_potential_step_object=:(x:number,y:number,speed:number,obj:index):&mp_potential_settings=:(maxrot,rotstep,ahead,onspot)&mp_linear_path=:(path:index,x:number,y:number,step:number,checkall:bool):&mp_potential_path=:(path:index,x:number,y:number,step:number,factor:number,checkall:bool):&mp_linear_path_object=:(path:index,x:number,y:number,step:number,obj:index):&mp_potential_path_object=:(path:index,x:number,y:number,step:number,factor:number,obj:index):&mp_grid_create=(left,top,hcells,vcells,cellwidth,cellheight):&mp_grid_destroy=(id)&mp_grid_clear_all=(id)&mp_grid_clear_cell=(id,h,v)&mp_grid_clear_rectangle=(id,left,top,right,bottom)&mp_grid_add_cell=(id,h,v)&mp_grid_get_cell=(id,h,v):&mp_grid_add_rectangle=(id,left,top,right,bottom)&mp_grid_add_instances=:(id,obj,prec)&mp_grid_path=:(:index,path:index,xstart:number,ystart:number,xgoal:number,ygoal:number,allowdiag:bool):&mp_grid_draw=(id)&mp_grid_to_ds_grid=(src_mp_grid:index, dest_ds_grid:index):bool&collision_point=:(x:number, y:number, obj:index, prec:bool, notme:bool):&collision_rectangle=:(x1:number, y1:number, x2:number, y2:number, obj:index, prec, notme):&collision_circle=:(x1:number, y1:number, radius, obj:index, prec, notme):&collision_ellipse=:(x1:number, y1:number, x2:number, y2:number, obj:index, prec, notme):&collision_line=:(x1:number, y1:number, x2:number, y2:number, obj:index, prec, notme):&collision_point_list=(x,y,obj,prec,notme,list,ordered):&collision_rectangle_list=(x1,y1,x2,y2,obj,prec,notme,list,ordered):&collision_circle_list=(x1,y1,radius,obj,prec,notme,list,ordered):&collision_ellipse_list=(x1,y1,x2,y2,obj,prec,notme,list,ordered):&collision_line_list=(x1,y1,x2,y2,obj,prec,notme,list,ordered):&instance_position_list=:(x:number, y:number, obj:index, list, ordered:bool):&instance_place_list=:(x:number, y:number, obj:index, list, ordered:bool):&point_in_rectangle=(px, py, x1:number, y1:number, x2:number, y2:number):&point_in_triangle=(px, py, x1:number, y1:number, x2:number, y2:number, x3:number, y3:number):&point_in_circle=(px, py, cx, cy, rad):&rectangle_in_rectangle=(sx1:number, sy1:number, sx2:number, sy2:number, dx1:number, dy1:number, dx2:number, dy2:number):&rectangle_in_triangle=(sx1:number, sy1:number, sx2:number, sy2:number, x1:number, y1:number, x2:number, y2:number, x3:number, y3:number):&rectangle_in_circle=(sx1:number, sy1:number, sx2:number, sy2:number, cx:number, cy:number, rad:number):&instance_find=(obj:id, n:int):any&instance_exists=(obj:any):bool&instance_number=(obj:any):int&instance_position=(x:number, y:number, obj:any):any&instance_nearest=:(x:number, y:number, obj:any):any&instance_furthest=:(x:number, y:number, obj:any):any&instance_place=:(x:number, y:number, obj:any):any&instance_create_depth=(x:number, y:number, depth:number, obj:id, ?obj):any&instance_create_layer=(x:number, y:number, layer, obj:id, ?obj):any&instance_copy=:(performevent:bool):any&instance_change=:(obj,performevents)&instance_destroy=:(?what:any, ?performevent:bool)&position_destroy=:(x,y)&position_change=:(x,y,obj,performevents)&instance_id_get=(index):&instance_deactivate_all=:(notme)&instance_deactivate_object=:(obj)&instance_deactivate_region=:(left,top,width,height,inside,notme)&instance_activate_all=:()&instance_activate_object=:(obj)&instance_activate_region=:(left,top,width,height,inside)&room_goto=(numb)&room_goto_previous=()&room_goto_next=()&room_previous=(numb):&room_next=(numb):&room_restart=()&game_end=()&game_restart=()&game_load=(filename):&game_save=(filename)&game_save_buffer=(buffer)&game_load_buffer=(buffer):&game_change=(working_directory,launch_parameters)&scheduler_resolution_set=(milliseconds)&scheduler_resolution_get=():&event_perform=:(type,numb)&event_perform_async=(type,ds_map)&event_user=:(numb)&event_perform_object=:(obj,type,numb)&event_inherited=:()&show_debug_message=(val_or_format, ...)&show_debug_message_ext=(format,array_value)&show_debug_overlay=(enable,[minimised],[scale],[alpha],...)&is_debug_overlay_open=():&is_mouse_over_debug_overlay=():&is_keyboard_used_debug_overlay=():&show_debug_log=(enable)&debug_event=(str,...)&debug_get_callstack=([maxdepth],...):&alarm_get=:(:int):&alarm_set=:(:int, value:int)&dbg_view=(name,visible,[x],[y],[width],[height],...)&dbg_section=(name,[open])&dbg_view_delete=(viewPTR)&dbg_view_exists=(viewPTR):&dbg_section_delete=(sectionPTR)&dbg_section_exists=(sectionPTR):&dbg_slider=(dbgRef,[minimum],[maximum],[label],...)&dbg_slider_int=(dbgRef,[minimum],[maximum],[label],...)&dbg_drop_down=(dbgRef,specifierOrArrayValues,[labelOrArrayLabels],[label]...)&dbg_watch=(dbgRef,[label],...)&dbg_text=(dbgRefOrString)&dbg_sprite=(dbgRefSprite,dbgRefSpriteIndex,[label],[width],[height]...)&dbg_text_input=(dbgRef,[label],[type]...)&dbg_checkbox=(dbgRef,[label],...)&dbg_colour=(dbgRef,[label],...)£&dbg_color=(dbgRef,[label],...)$&dbg_button=(label,dbgRef,[width],[height]...)&dbg_same_line=()&dbg_add_font_glyphs=(filenameTTF,[size],[fontRange]...)&ref_create=(dbgrefOrStruct,dbgrefOrName,[index],...):&keyboard_set_map=(key1, key2):bool&keyboard_get_map=(key):&keyboard_unset_map=()&keyboard_check=(key:index):&keyboard_check_pressed=(key:index):&keyboard_check_released=(key:index):&keyboard_check_direct=(key:index):&keyboard_get_numlock=():&keyboard_set_numlock=(on)&keyboard_key_press=(key)&keyboard_key_release=(key)&keyboard_clear=(key:index)&io_clear=()&mouse_check_button=(button:index):&mouse_check_button_pressed=(button:index):&mouse_check_button_released=(button:index):&mouse_wheel_up=():&mouse_wheel_down=():&mouse_clear=(button)&draw_self=:()&draw_sprite=:(sprite,subimg,x,y)&draw_sprite_pos=:(sprite,subimg,x1,y1,x2,y2,x3,y3,x4,y4,alpha)&draw_sprite_ext=:(sprite,subimg,x,y,xscale,yscale,rot,col,alpha)&draw_sprite_stretched=:(sprite,subimg,x,y,w,h)&draw_sprite_stretched_ext=:(sprite,subimg,x,y,w,h,col,alpha)&draw_sprite_tiled=:(sprite,subimg,x,y)&draw_sprite_tiled_ext=:(sprite,subimg,x,y,xscale,yscale,col,alpha)&draw_sprite_part=:(sprite,subimg,left,top,width,height,x,y)&draw_sprite_part_ext=:(sprite,subimg,left,top,width,height,x,y,xscale,yscale,col,alpha)&draw_sprite_general=:(sprite,subimg,left,top,width,height,x,y,xscale,yscale,rot,c1,c2,c3,c4,alpha)&draw_clear=(col)&draw_clear_alpha=(col,alpha)&draw_point=(x,y)&draw_line=(x1,y1,x2,y2)&draw_line_width=(x1,y1,x2,y2,w)&draw_rectangle=(x1,y1,x2,y2,outline)&draw_roundrect=(x1,y1,x2,y2,outline)&draw_roundrect_ext=(x1,y1,x2,y2,radiusx,radiusy,outline)&draw_triangle=(x1,y1,x2,y2,x3,y3,outline)&draw_circle=(x,y,r,outline)&draw_ellipse=(x1,y1,x2,y2,outline)&draw_set_circle_precision=(precision)&draw_arrow=(x1,y1,x2,y2,size)&draw_button=(x1,y1,x2,y2,up)&draw_path=(path,x,y,absolute)&draw_healthbar=(x1,y1,x2,y2,amount,backcol,mincol,maxcol,direction,showback,showborder)&draw_getpixel=(x,y):&draw_getpixel_ext=(x,y):&draw_set_colour=(:color)&draw_set_color=(:color)&draw_set_alpha=(alpha:number)&draw_get_colour=():color&draw_get_color=():color&draw_get_alpha=():number&merge_colour=(col1:color, col2:color, amount:number)#:color&make_colour_rgb=(red:number, green:number, blue:number)#:color&make_colour_hsv=(hue:number, saturation:number, value:number)#:color&colour_get_red=(:color)#:int&colour_get_green=(:color)#:int&colour_get_blue=(:color)#:int&colour_get_hue=(:color)#:number&colour_get_saturation=(:color)#:number&colour_get_value=(:color)#:number&merge_color=(col1:color, col2:color, amount:number)#:color&make_color_rgb=(red:number, green:number, blue:number)#:color&make_color_hsv=(hue:number, saturation:number, value:number)#:color&color_get_red=(:color)#:int&color_get_green=(:color)#:int&color_get_blue=(:color)#:int&color_get_hue=(:color)#:number&color_get_saturation=(:color)#:number&color_get_value=(:color)#:number&screen_save=(fname)&screen_save_part=(fname,x,y,w,h)&gif_open=(width:int, height:int, ?color:int):int&gif_add_surface=(gif:int, surf, delay:number, ?xoffset:number, ?yoffset:number, ?quant:number):int&gif_save=(gif:int, fname:string):int&gif_save_buffer=(gif:int):int&draw_set_font=(:font)&draw_get_font=():&draw_set_halign=(halign:int)&draw_get_halign=():&draw_set_valign=(valign:int)&draw_get_valign=():&draw_text=(x,y,string)&draw_text_ext=(x,y,string,sep,w)&string_width=(:string):number&string_height=(:string):number&string_width_ext=(:string, sep:number, w:number):number&string_height_ext=(:string, sep:number, w:number):number&draw_text_transformed=(x,y,string,xscale,yscale,angle)&draw_text_ext_transformed=(x,y,string,sep,w,xscale,yscale,angle)&draw_text_colour=(x,y,string,c1,c2,c3,c4,alpha)£&draw_text_ext_colour=(x,y,string,sep,w,c1,c2,c3,c4,alpha)£&draw_text_transformed_colour=(x,y,string,xscale,yscale,angle,c1,c2,c3,c4,alpha)£&draw_text_ext_transformed_colour=(x,y,string,sep,w,xscale,yscale,angle,c1,c2,c3,c4,alpha)£&draw_text_color=(x,y,string,c1,c2,c3,c4,alpha)$&draw_text_ext_color=(x,y,string,sep,w,c1,c2,c3,c4,alpha)$&draw_text_transformed_color=(x,y,string,xscale,yscale,angle,c1,c2,c3,c4,alpha)$&draw_text_ext_transformed_color=(x,y,string,sep,w,xscale,yscale,angle,c1,c2,c3,c4,alpha)$&draw_point_colour=(x,y,col1)£&draw_line_colour=(x1,y1,x2,y2,col1,col2)£&draw_line_width_colour=(x1,y1,x2,y2,w,col1,col2)£&draw_rectangle_colour=(x1,y1,x2,y2,col1,col2,col3,col4,outline)£&draw_roundrect_colour=(x1,y1,x2,y2,col1,col2,outline)£&draw_roundrect_colour_ext=(x1,y1,x2,y2,radiusx,radiusy,col1,col2,outline)£&draw_triangle_colour=(x1,y1,x2,y2,x3,y3,col1,col2,col3,outline)£&draw_circle_colour=(x,y,r,col1,col2,outline)£&draw_ellipse_colour=(x1,y1,x2,y2,col1,col2,outline)£&draw_point_color=(x,y,col1)$&draw_line_color=(x1,y1,x2,y2,col1,col2)$&draw_line_width_color=(x1,y1,x2,y2,w,col1,col2)$&draw_rectangle_color=(x1,y1,x2,y2,col1,col2,col3,col4,outline)$&draw_roundrect_color=(x1,y1,x2,y2,col1,col2,outline)$&draw_roundrect_color_ext=(x1,y1,x2,y2,radiusx,radiusy,col1,col2,outline)$&draw_triangle_color=(x1,y1,x2,y2,x3,y3,col1,col2,col3,outline)$&draw_circle_color=(x,y,r,col1,col2,outline)$&draw_ellipse_color=(x1,y1,x2,y2,col1,col2,outline)$&draw_primitive_begin=(kind)&draw_vertex=(x,y)&draw_vertex_colour=(x,y,col,alpha)£&draw_vertex_color=(x,y,col,alpha)$&draw_primitive_end=()&sprite_get_uvs=(spr:index, subimg:number):&font_get_uvs=(font:index):&font_get_info=(font):&font_cache_glyph=(font,glyphIndex)&sprite_get_texture=(spr:index, subimg:number):&font_get_texture=(font:index):&texture_get_width=(texid):&texture_get_height=(texid):&texture_get_uvs=(texid):&draw_primitive_begin_texture=(kind,texid)&draw_vertex_texture=(x,y,xtex,ytex)&draw_vertex_texture_colour=(x,y,xtex,ytex,col,alpha)£&draw_vertex_texture_color=(x,y,xtex,ytex,col,alpha)$&texture_global_scale=(pow2integer)&surface_create=(w,h,[format]):&surface_create_ext=(name,w,h):&surface_resize=(id,width,height)&surface_free=(id)&surface_exists=(id):&surface_get_width=(id):&surface_get_height=(id):&surface_get_texture=(id):&surface_get_format=(id):&surface_set_target=(id)&surface_set_target_ext=(index:int, surf):bool&surface_get_target=():&surface_get_target_ext=(index):&surface_reset_target=()&surface_depth_disable=(disable)&surface_get_depth_disable=():&surface_format_is_supported=(format):&draw_surface=(id,x,y)&draw_surface_stretched=(id,x,y,w,h)&draw_surface_tiled=(id,x,y)&draw_surface_part=(id,left,top,width,height,x,y)&draw_surface_ext=(id,x,y,xscale,yscale,rot,col,alpha)&draw_surface_stretched_ext=(id,x,y,w,h,col,alpha)&draw_surface_tiled_ext=(id,x,y,xscale,yscale,col,alpha)&draw_surface_part_ext=(id,left,top,width,height,x,y,xscale,yscale,col,alpha)&draw_surface_general=(id,left,top,width,height,x,y,xscale,yscale,rot,c1,c2,c3,c4,alpha)&surface_getpixel=(id,x,y):&surface_getpixel_ext=(id,x,y):&surface_save=(id,fname)&surface_save_part=(id,fname,x,y,w,h)&surface_copy=(destination,x,y,source)&surface_copy_part=(destination,x,y,source,xs,ys,ws,hs)&application_surface_draw_enable=(on_off)&application_get_position=():&application_surface_enable=(enable)&application_surface_is_enabled=():&video_open=(path)&video_close=()&video_set_volume=(vol)&video_draw=()&video_pause=()&video_resume=()&video_enable_loop=(enable)&video_seek_to=(milliseconds)&video_get_duration=():&video_get_position=():&video_get_status=():&video_get_format=():&video_is_looping=():&video_get_volume=():&display_get_width=():&display_get_height=():&display_get_orientation=():&display_get_gui_width=():&display_get_gui_height=():&display_get_frequency=():&display_reset=(aa, vsync):&display_mouse_get_x=():&display_mouse_get_y=():&display_mouse_set=(x,y)&display_set_ui_visibility=(flags)&window_set_showborder=(show)&window_get_showborder=():&window_set_fullscreen=(full)&window_get_fullscreen=():&window_set_caption=(caption)&window_set_min_width=(minwidth)&window_set_max_width=(maxwidth)&window_set_min_height=(minheight)&window_set_max_height=(maxheight)&window_get_visible_rects=(startx,starty,endx,endy):&window_get_caption=():&window_set_cursor=(curs)&window_enable_borderless_fullscreen=(enable)&window_get_borderless_fullscreen=():&window_get_cursor=():&window_set_colour=(colour)£&window_get_colour=()£:&window_set_color=(color)$&window_get_color=()$:&window_set_position=(x,y)&window_set_size=(w,h)&window_set_rectangle=(x,y,w,h)&window_center=()&window_get_x=():&window_get_y=():&window_get_width=():&window_get_height=():&window_mouse_get_x=():&window_mouse_get_y=():&window_mouse_set=(x,y)&window_mouse_set_locked=(enable)&window_mouse_get_locked=():&window_mouse_get_delta_x=():&window_mouse_get_delta_y=():&window_view_mouse_get_x=(id):&window_view_mouse_get_y=(id):&window_views_mouse_get_x=():&window_views_mouse_get_y=():&audio_listener_position=(x,y,z)&audio_listener_velocity=(vx,vy,vz)&audio_listener_orientation=(lookat_x,lookat_y,lookat_z,up_x,up_y,up_z)&audio_emitter_position=(emitterid,x,y,z)&audio_emitter_create=():&audio_emitter_free=(emitterid)&audio_emitter_exists=(emitterid):&audio_emitter_pitch=(emitterid,pitch)&audio_emitter_velocity=(emitterid,vx,vy,vz)&audio_emitter_falloff=(emitterid, falloff_ref_dist,falloff_max_dist,falloff_factor)&audio_emitter_gain=(emitterid,gain)&audio_play_sound=(soundid:index,priority:number,loops:bool):&audio_play_sound_on=(em:index,soundid:index,priority:number,loops:bool):&audio_play_sound_at=(soundid:index,x:number,y:number,z:number, falloff_ref_dist:number,falloff_max_dist:number,falloff_factor:number,loops:bool, priority:number):&audio_play_sound_ext=(params)&audio_stop_sound=(soundid)&audio_resume_sound=(soundid)&audio_pause_sound=(soundid)&audio_channel_num=(numchannels)&audio_sound_length=(sound:index):&audio_get_type=(soundid):&audio_falloff_set_model=(falloffmode)&audio_master_gain=(gain)&audio_sound_gain=(index,level,time)&audio_sound_pitch=(index,pitch)&audio_stop_all=()&audio_resume_all=()&audio_pause_all=()&audio_is_playing=(soundid):&audio_is_paused=(soundid):&audio_exists=(soundid):&audio_system_is_available=():&audio_system_is_initialised=():&audio_sound_is_playable=(soundid):&audio_emitter_get_gain=(emitterid):&audio_emitter_get_pitch=(emitterid):&audio_emitter_get_x=(emitterid):&audio_emitter_get_y=(emitterid):&audio_emitter_get_z=(emitterid):&audio_emitter_get_vx=(emitterid):&audio_emitter_get_vy=(emitterid):&audio_emitter_get_vz=(emitterid):&audio_listener_set_position=(index, x,y,z)&audio_listener_set_velocity=(index, vx,vy,vz)&audio_listener_set_orientation=(index, lookat_x,lookat_y,lookat_z,up_x,up_y,up_z)&audio_listener_get_data=(index):&audio_set_master_gain=(listenerIndex, gain)&audio_get_master_gain=(listenerIndex):&audio_sound_get_gain=(index):&audio_sound_get_pitch=(index):&audio_get_name=(index):&audio_sound_set_track_position=(index, time)&audio_sound_get_track_position=(index):&audio_sound_loop=(voiceIndex, loopState)&audio_sound_get_loop=(voiceIndex):&audio_sound_loop_start=(index, time)&audio_sound_get_loop_start=(index):&audio_sound_loop_end=(index, time)&audio_sound_get_loop_end=(index):&audio_create_stream=(filename)!:&audio_destroy_stream=(stream_sound_id)!&audio_create_sync_group=(looping):&audio_destroy_sync_group=(sync_group_id)&audio_play_in_sync_group=(sync:index, snd:index):&audio_start_sync_group=(sync_group_id)&audio_stop_sync_group=(sync_group_id)&audio_pause_sync_group=(sync_group_id)&audio_resume_sync_group=(sync_group_id)&audio_sync_group_get_track_pos=(sync_group_id):&audio_sync_group_debug=(sync_group_id)&audio_sync_group_is_playing=(sync_group_id):&audio_sync_group_is_paused=(sync_group_id):&audio_debug=(enable)&audio_group_load=(groupId):&audio_group_unload=(ind:int):bool&audio_group_is_loaded=(groupId):&audio_group_load_progress=(groupId):&audio_group_name=(group:index):&audio_group_stop_all=(groupId)&audio_group_set_gain=(groupId, volume, time)&audio_group_get_gain=(groupId):&audio_group_get_assets=(groupId):&audio_sound_get_audio_group=(index):&audio_create_buffer_sound=(bufferId, format, rate, offset, length, channels)!:&audio_free_buffer_sound=(soundId)!&audio_create_play_queue=(bufferFormat, sampleRate, channels)!:&audio_free_play_queue=(queueId)!&audio_queue_sound=(queueId, buffer_id, offset, length)!&audio_get_recorder_count=():&audio_get_recorder_info=(recorder_num):&audio_start_recording=(rec:number):&audio_stop_recording=(channel_index)&audio_sound_get_listener_mask=(soundid):&audio_emitter_get_listener_mask=(emitterid):&audio_get_listener_mask=():&audio_sound_set_listener_mask=(soundid,mask)&audio_emitter_set_listener_mask=(emitterid,mask)&audio_set_listener_mask=(mask)&audio_get_listener_count=():&audio_get_listener_info=(index):&show_message=(str)&show_message_async=(:string):int&clickable_add=(x,y,spritetpe,URL,target,params):&clickable_add_ext=(x,y,spritetpe,URL,target,params,scale,alpha):&clickable_change=(buttonid,spritetpe,x,y)&clickable_change_ext=(buttonid,spritetpe,x,y,scale,alpha)&clickable_delete=(buttonid)&clickable_exists=(index):&clickable_set_style=(buttonid,map)&show_question=(str:string):&show_question_async=(:string):&get_integer=(:string,:number):&get_string=(:string,:string):&get_integer_async=(:string,:number):&get_string_async=(:string,:string):&get_login_async=(:string,:string):&get_open_filename=(:string,:string):&get_save_filename=(:string,:string):&get_open_filename_ext=(:string,:string,:string,:string):&get_save_filename_ext=(:string,:string,:string,:string):&show_error=(str,abort)&highscore_clear=()&highscore_add=(str,numb)&highscore_value=(:index):&highscore_name=(:index):&draw_highscore=(x1,y1,x2,y2)&sprite_exists=(ind):&sprite_get_name=(ind):&sprite_get_number=(ind):&sprite_get_width=(ind):&sprite_get_height=(ind):&sprite_get_xoffset=(ind):&sprite_get_yoffset=(ind):&sprite_get_bbox_mode=(ind):&sprite_get_bbox_left=(ind):&sprite_get_bbox_right=(ind):&sprite_get_bbox_top=(ind):&sprite_get_bbox_bottom=(ind):&sprite_set_bbox_mode=(ind,mode)&sprite_set_bbox=(ind,left,top,right,bottom)&sprite_save=(ind,subimg,fname)&sprite_save_strip=(ind,fname)&sprite_set_cache_size=(ind, max)&sprite_set_cache_size_ext=(ind, image, max)&sprite_get_tpe=(index,subindex):&sprite_prefetch=(ind)&sprite_prefetch_multi=(indarray)&sprite_flush=(ind)&sprite_flush_multi=(indarray)&sprite_set_speed=(ind,speed,type)&sprite_get_speed_type=(ind):&sprite_get_speed=(ind):&sprite_get_info=(ind):&sprite_get_nineslice=(ind):&sprite_set_nineslice=(ind,nineslice)&sprite_nineslice_create=():&texture_is_ready=(tex_id):&texture_prefetch=(tex_id_or_groupname)&texture_flush=(tex_id_or_groupname)&texturegroup_get_textures=(groupname):&texturegroup_get_sprites=(groupname):&texturegroup_get_fonts=(groupname):&texturegroup_get_tilesets=(groupname):&texturegroup_get_names=():&texturegroup_load=(groupname,[prefetch]):&texturegroup_unload=(groupname)&texturegroup_get_status=(groupname):&texturegroup_set_mode=(explicit,debug,default_sprite)&texture_debug_messages=(debug_level)&font_exists=(ind):&font_get_name=(ind):&font_get_fontname=(ind):&font_get_bold=(ind):&font_get_italic=(ind):&font_get_first=(ind):&font_get_last=(ind):&font_get_size=(ind):&font_set_cache_size=(font,max)&path_exists=(ind):&path_get_name=(ind):&path_get_length=(ind):&path_get_kind=(ind):&path_get_closed=(ind):&path_get_precision=(ind):&path_get_number=(ind):&path_get_point_x=(ind,n):&path_get_point_y=(ind,n):&path_get_point_speed=(ind,n):&path_get_x=(ind,pos):&path_get_y=(ind,pos):&path_get_speed=(ind,pos):&script_exists=(ind):&script_get_name=(:id):string;&timeline_add=()!:&timeline_delete=(ind)!&timeline_clear=(ind)&timeline_exists=(ind):&timeline_get_name=(ind):&timeline_moment_clear=(ind,step)&timeline_moment_add_script=(ind,step,script)&timeline_size=(ind):&timeline_max_moment=(:index):&object_exists=(ind):&object_get_name=(o:id):string&object_get_sprite=(ind):&object_get_solid=(ind):&object_get_visible=(ind):&object_get_persistent=(ind):&object_get_mask=(ind):&object_get_parent=(ind):&object_get_physics=(ind):&object_is_ancestor=(ind_child,ind_parent):&room_exists=(ind):&room_get_name=(ind):&room_get_info=(ind,[views],[instances],[layers],[layer_elements],[tilemap_data]):&sprite_set_offset=(ind,xoff,yoff)&sprite_duplicate=(:index):&sprite_assign=(ind,source)&sprite_merge=(ind1,ind2)&sprite_add=(fname:string,imgnumb:int,removeback:bool,smooth:bool,xorig:number,yorig:number)!:&sprite_add_ext=(fname,imgnumb,xorig,yorig,prefetch)!&sprite_replace=(ind,fname,imgnumb,removeback,smooth,xorig,yorig)!&sprite_create_from_surface=(:index,x:number,y:number,w:number,h:number,removeback:bool,smooth:bool,xorig:number,yorig:number)!:&sprite_add_from_surface=(ind:index,id:index,x:number,y:number,w:number,h:number,removeback:bool,smooth:bool)!:&sprite_delete=(ind)!&sprite_set_alpha_from_sprite=(ind,spr)&sprite_collision_mask=(ind,sepmasks,bboxmode,bbleft,bbtop,bbright,bbbottom,kind,tolerance)&font_add_enable_aa=(enable)&font_add_get_enable_aa=():&font_add=(:string,:number,:bool,:bool,:int,:int)!:&font_add_sprite=(spr:index,first:int,prop:bool,sep:number)!:&font_add_sprite_ext=(spr:index,:string,:bool,:number)!:&font_replace_sprite=(ind,spr,first,prop,sep)!&font_replace_sprite_ext=(font,spr,string_map,prop,sep)!&font_delete=(ind)!&font_enable_sdf=(ind,enable)!&font_get_sdf_enabled=(ind)!:&font_sdf_spread=(ind,spread)!&font_get_sdf_spread=(ind)!:&font_enable_effects=(ind,enable, [params])!&path_set_kind=(ind,kind)&path_set_closed=(ind,closed)&path_set_precision=(ind,prec)&path_add=()!:&path_assign=(ind,path)&path_duplicate=(:index)!:&path_append=(ind,path)&path_delete=(ind)&path_add_point=(ind,x,y,speed)&path_insert_point=(ind,n,x,y,speed)&path_change_point=(ind,n,x,y,speed)&path_delete_point=(ind,n)!&path_clear_points=(ind)&path_reverse=(ind)&path_mirror=(ind)&path_flip=(ind)&path_rotate=(ind,angle)&path_rescale=(ind,xscale,yscale)&path_shift=(ind,xshift,yshift)&object_set_sprite=(ind,spr)&object_set_solid=(ind,solid)&object_set_visible=(ind,vis)&object_set_persistent=(ind,pers)&object_set_mask=(ind,spr)&room_set_width=(ind,w)&room_set_height=(ind,h)&room_set_persistent=(ind,pers)&room_set_viewport=(ind,vind,vis,xport,yport,wport,hport)&room_get_viewport=(ind,vind):&room_set_view_enabled=(ind,val)&room_add=()!:&room_duplicate=(:index)!:&room_assign=(ind,source)&room_instance_add=(:index,:number,:number,:index):&room_instance_clear=(ind)&room_get_camera=(ind,vind):&room_set_camera=(ind,vind,camera)&asset_get_index=(name):&asset_get_type=(name):&asset_get_ids=(asset_type):&file_text_open_from_string=(:string):&file_text_open_read=(fname):&file_text_open_write=(:string):&file_text_open_append=(:string):&file_text_close=(file)&file_text_write_string=(file,str)&file_text_write_real=(file,val)&file_text_writeln=(file)&file_text_read_string=(file):&file_text_read_real=(file):&file_text_readln=(file):&file_text_eof=(:index):&file_text_eoln=(:index):&file_exists=(fname):&file_delete=(:string):bool&file_rename=(:string, :string):bool&file_copy=(fname,newname)&directory_exists=(dname):&directory_create=(dname):&directory_destroy=(dname)&file_find_first=(mask,attr):&file_find_next=():&file_find_close=():&file_attributes=(:string,:int):&filename_name=(:string):&filename_path=(:string):&filename_dir=(:string):&filename_drive=(:string):&filename_ext=(:string):&filename_change_ext=(:string,:string):&file_bin_open=(:string,mode):&file_bin_rewrite=(file)&file_bin_close=(file)&file_bin_position=(:index):&file_bin_size=(file):&file_bin_seek=(file,pos)&file_bin_write_byte=(file,byte)&file_bin_read_byte=(file):&parameter_count=():&parameter_string=(:index):&environment_get_variable=(name):&ini_open_from_string=(content)&ini_open=(fname)&ini_close=():&ini_read_string=(section,key,default):&ini_read_real=(section,key,default):&ini_write_string=(section,key,str)&ini_write_real=(section,key,value)&ini_key_exists=(section,key):&ini_section_exists=(section):&ini_key_delete=(section,key)&ini_section_delete=(section)&ds_set_precision=(prec)&ds_exists=(id, type):&ds_stack_create=():index&ds_stack_destroy=(id)&ds_stack_clear=(id)&ds_stack_copy=(id,source)&ds_stack_size=(id):&ds_stack_empty=(:index):bool&ds_stack_push=(id,value,...)&ds_stack_pop=(:index):&ds_stack_top=(:index):&ds_stack_write=(:index):&ds_stack_read=(:index,:string,?legacy):&ds_queue_create=():&ds_queue_destroy=(id)&ds_queue_clear=(id)&ds_queue_copy=(id,source)&ds_queue_size=(id):&ds_queue_empty=(:index):&ds_queue_enqueue=(id,value,...)&ds_queue_dequeue=(:index):&ds_queue_head=(:index):&ds_queue_tail=(:index):&ds_queue_write=(:index):&ds_queue_read=(:index,:string,?legacy):&ds_list_create=():id&ds_list_destroy=(:id)&ds_list_clear=(:id)&ds_list_copy=(:id,source:id)&ds_list_size=(:id):int&ds_list_empty=(:id):bool&ds_list_add=(:id,...:any)&ds_list_insert=(:id,pos:int,value:any)&ds_list_replace=(:id,pos:int,value:any)&ds_list_delete=(:id,pos:int)&ds_list_find_index=(:id,value:any):int&ds_list_find_value=(:id,pos:int):any&ds_list_is_map=(id,pos):&ds_list_is_list=(id,pos):&ds_list_mark_as_list=(:index, :index)&ds_list_mark_as_map=(:index, :index)&ds_list_sort=(:id,ascending:bool)&ds_list_shuffle=(:id)&ds_list_write=(:id):string&ds_list_read=(:id,:string,?legacy:bool):&ds_list_set=(:id,pos:int,value:any)&ds_map_create=():index&ds_map_destroy=(:index)&ds_map_clear=(:index)&ds_map_copy=(:index,:index)&ds_map_size=(:index):int&ds_map_empty=(:index):bool&ds_map_add=(:index,:any,:any)&ds_map_add_list=(:index,:any,value)&ds_map_add_map=(:index,:any,value)&ds_map_replace=(:index,:any,value)&ds_map_replace_map=(:index,:any,value)&ds_map_replace_list=(:index,:any,value)&ds_map_delete=(:index,:any)&ds_map_exists=(:index,:any):bool&ds_map_values_to_array=(id,?$1,...)&ds_map_keys_to_array=(id,?$1,...)&ds_map_find_value=(:index,:any):any&ds_map_is_map=(id,key):&ds_map_is_list=(id,key):&ds_map_find_previous=(:index,:any):any&ds_map_find_next=(:index,:any):any&ds_map_find_first=(:index):any&ds_map_find_last=(:index):any&ds_map_write=(:index):string&ds_map_read=(:index,:string,?legacy:bool):&ds_map_secure_save=(:index, path:string)&ds_map_secure_load=(path:string):index&ds_map_secure_load_buffer=(:id):index&ds_map_secure_save_buffer=(:index,:id)&ds_map_set=(:index,:any,:any)&ds_priority_create=():&ds_priority_destroy=(id)&ds_priority_clear=(id)&ds_priority_copy=(id,source)&ds_priority_size=(id):&ds_priority_empty=(:index):&ds_priority_add=(id,value,priority)&ds_priority_change_priority=(id,value,priority)&ds_priority_find_priority=(id,value):&ds_priority_delete_value=(id,value)&ds_priority_delete_min=(:index):&ds_priority_find_min=(:index):&ds_priority_delete_max=(:index):&ds_priority_find_max=(:index):&ds_priority_write=(:index):&ds_priority_read=(:index,:string,?legacy):&ds_grid_create=(w,h):&ds_grid_destroy=(id)&ds_grid_copy=(id,source)&ds_grid_resize=(id,w,h)&ds_grid_width=(:index):&ds_grid_height=(:index):&ds_grid_clear=(id,val)&ds_grid_add=(id,x,y,val)&ds_grid_multiply=(id,x,y,val)&ds_grid_set_region=(id,x1,y1,x2,y2,val)&ds_grid_add_region=(id,x1,y1,x2,y2,val)&ds_grid_multiply_region=(id,x1,y1,x2,y2,val)&ds_grid_set_disk=(id,xm,ym,r,val)&ds_grid_add_disk=(id,xm,ym,r,val)&ds_grid_multiply_disk=(id,xm,ym,r,val)&ds_grid_set_grid_region=(id,source,x1,y1,x2,y2,xpos,ypos)&ds_grid_add_grid_region=(id,source,x1,y1,x2,y2,xpos,ypos)&ds_grid_multiply_grid_region=(id,source,x1,y1,x2,y2,xpos,ypos)&ds_grid_get_sum=(id,x1,y1,x2,y2):&ds_grid_get_max=(id,x1,y1,x2,y2):&ds_grid_get_min=(id,x1,y1,x2,y2):&ds_grid_get_mean=(id,x1,y1,x2,y2):&ds_grid_get_disk_sum=(id,xm,ym,r):&ds_grid_get_disk_min=(id,xm,ym,r):&ds_grid_get_disk_max=(id,xm,ym,r):&ds_grid_get_disk_mean=(id,xm,ym,r):&ds_grid_value_exists=(id,x1,y1,x2,y2,val):&ds_grid_value_x=(:index,x1:number,y1:number,x2:number,y2:number,val):&ds_grid_value_y=(:index,x1:number,y1:number,x2:number,y2:number,val):&ds_grid_value_disk_exists=(id,xm,ym,r,val):&ds_grid_value_disk_x=(:index,xm:number,ym:number,r:number,val):&ds_grid_value_disk_y=(:index,xm:number,ym:number,r:number,val):&ds_grid_shuffle=(id)&ds_grid_write=(:index):&ds_grid_read=(:index,:string,?legacy):&ds_grid_sort=(id,column,ascending)&ds_grid_set=(id,x,y,value)&ds_grid_get=(id,x,y):&ds_grid_to_mp_grid=(src,dest,[func])&effect_create_below=(kind,x,y,size,col):&effect_create_above=(kind,x,y,size,col):&effect_create_layer=(layer_id_or_name,kind,x,y,size,col):&effect_create_depth=(depth,kind,x,y,size,col):&effect_clear=()&part_type_create=():&part_type_destroy=(ind)&part_type_exists=(ind):&part_type_clear=(ind)&part_type_shape=(ind,shape)&part_type_sprite=(ind,sprite,animat,stretch,random)&part_type_subimage=(ind,subimg)&part_type_size=(ind,size_min,size_max,size_incr,size_wiggle):&part_type_size_x=(ind,size_min_x,size_max_x,size_incr_x,size_wiggle_y):&part_type_size_y=(ind,size_min_y,size_max_y,size_incr_y,size_wiggle_y):&part_type_scale=(ind,xscale,yscale)&part_type_orientation=(ind,ang_min,ang_max,ang_incr,ang_wiggle,ang_relative)&part_type_life=(ind,life_min,life_max)&part_type_step=(ind,step_number,step_type)&part_type_death=(ind,death_number,death_type)&part_type_speed=(ind,speed_min,speed_max,speed_incr,speed_wiggle)&part_type_direction=(ind,dir_min,dir_max,dir_incr,dir_wiggle)&part_type_gravity=(ind,grav_amount,grav_dir)&part_type_colour1=(ind,colour1)£&part_type_colour2=(ind,colour1,colour2)£&part_type_colour3=(ind,colour1,colour2,colour3)£&part_type_colour_mix=(ind,colour1,colour2)£&part_type_colour_rgb=(ind,rmin,rmax,gmin,gmax,bmin,bmax)£&part_type_colour_hsv=(ind,hmin,hmax,smin,smax,vmin,vmax)£&part_type_color1=(ind,color1)$&part_type_color2=(ind,color1,color2)$&part_type_color3=(ind,color1,color2,color3)$&part_type_color_mix=(ind,color1,color2)$&part_type_color_rgb=(ind,rmin,rmax,gmin,gmax,bmin,bmax)$&part_type_color_hsv=(ind,hmin,hmax,smin,smax,vmin,vmax)$&part_type_alpha1=(ind,alpha1)&part_type_alpha2=(ind,alpha1,alpha2)&part_type_alpha3=(ind,alpha1,alpha2,alpha3)&part_type_blend=(ind,additive)&particle_get_info=(ind):&particle_exists=(ind):&part_system_create=([partsys]):&part_system_create_layer=(layer,persistent,[partsys]):&part_system_destroy=(ind)&part_system_exists=(ind):&part_system_clear=(ind)&part_system_draw_order=(ind,oldtonew)&part_system_depth=(ind,depth)&part_system_color=(ind,color,alpha)$&part_system_colour=(ind,colour,alpha)£&part_system_position=(ind,x,y)&part_system_angle=(ind,angle)&part_system_automatic_update=(ind,automatic)&part_system_automatic_draw=(ind,draw)&part_system_update=(ind)&part_system_drawit=(ind)&part_system_get_layer=(ind):&part_system_layer=(ind,layer)&part_system_global_space=(ind,enable)&part_system_get_info=(ind):&part_particles_create=(ind,x,y,parttype,number):&part_particles_create_colour=(ind,x,y,parttype,colour,number)£:&part_particles_create_color=(ind,x,y,parttype,color,number)$:&part_particles_burst=(ind,x,y,partsys)&part_particles_clear=(ind)&part_particles_count=(ind)&part_emitter_create=(ps):&part_emitter_destroy=(ps,ind)&part_emitter_destroy_all=(ps)&part_emitter_enable=(ps,ind,enable)&part_emitter_exists=(ps,ind):&part_emitter_clear=(ps,ind)&part_emitter_region=(ps,ind,xmin,xmax,ymin,ymax,shape,distribution)&part_emitter_burst=(ps,ind,parttype,number)&part_emitter_stream=(ps,ind,parttype,number)&part_emitter_delay=(ps,ind,delay_min,delay_max,delay_unit)&part_emitter_interval=(ps,ind,interval_min,interval_max,inerval_unit)&part_emitter_relative=(ps,ind,enable)&window_handle=():&window_device=():&matrix_get=(type):&matrix_set=(type,matrix)&matrix_build_identity=():&matrix_build=(x,y,z,xrotation,yrotation,zrotation,xscale,yscale,zscale):&matrix_build_lookat=(xfrom,yfrom,zfrom,xto,yto,zto,xup,yup,zup):&matrix_build_projection_ortho=(width,height,znear,zfar):&matrix_build_projection_perspective=(width,height,znear,zfar):&matrix_build_projection_perspective_fov=(fov_y,aspect,znear,zfar):&matrix_multiply=(a, b):&matrix_transform_vertex=(matrix, x, y, z):&matrix_stack_push=(...)&matrix_stack_pop=():&matrix_stack_set=(matrix)&matrix_stack_clear=()&matrix_stack_top=():&matrix_stack_is_empty=():&browser_input_capture=(enable)&os_get_config=():&os_get_info=():&os_get_language=():&os_get_region=():&os_check_permission=(perm):&os_request_permission=(perm):&os_lock_orientation=(flag)&os_set_orientation_lock=(landscape_enable,portrait_enable)&display_get_dpi_x=():&display_get_dpi_y=():&display_set_gui_size=(width,height)&display_set_gui_maximise=(xscale,yscale,xoffset,yoffset,...)£&display_set_gui_maximize=(xscale,yscale,xoffset,yoffset,...)$&device_mouse_dbclick_enable=(enable)&display_set_timing_method=(method)&display_get_timing_method=():&display_set_sleep_margin=(milliseconds)&display_get_sleep_margin=():&virtual_key_add=(x,y,w,h,keycode)&virtual_key_hide=(id)&virtual_key_delete=(id)&virtual_key_show=(id)&draw_enable_drawevent=(enable)&draw_texture_flush=()&draw_flush=()&gpu_set_blendenable=(enable)&gpu_set_ztestenable=(enable)&gpu_set_zfunc=(cmp_func)&gpu_set_zwriteenable=(enable)&gpu_set_depth=(depth)&gpu_set_fog=(data_or_enable,?color,?start,?end)&gpu_set_cullmode=(cullmode)&gpu_set_blendmode=(mode)&gpu_set_blendmode_ext=(src,dest)&gpu_set_blendmode_ext_sepalpha=(src,dest,srcalpha,destalpha)&gpu_set_blendequation=(equation)&gpu_set_blendequation_sepalpha=(equation, equation_alpha)&gpu_set_colorwriteenable=(red_or_array,?$1,?$1,?$1,...)$&gpu_set_colourwriteenable=(red_or_arry,?$1,?$1,?$1,...)£&gpu_set_alphatestenable=(enable)&gpu_set_alphatestref=(value)&gpu_set_texfilter=(linear)&gpu_set_texfilter_ext=(sampler_id,linear)&gpu_set_texrepeat=(repeat)&gpu_set_texrepeat_ext=(sampler_id,repeat)&gpu_set_tex_filter=(linear)&gpu_set_tex_filter_ext=(sampler_id,linear)&gpu_set_tex_repeat=(repeat)&gpu_set_tex_repeat_ext=(sampler_id,repeat)&gpu_set_tex_mip_filter=(filter)&gpu_set_tex_mip_filter_ext=(sampler_id,filter)&gpu_set_tex_mip_bias=(bias)&gpu_set_tex_mip_bias_ext=(sampler_id,bias)&gpu_set_tex_min_mip=(minmip)&gpu_set_tex_min_mip_ext=(sampler_id,minmip)&gpu_set_tex_max_mip=(maxmip)&gpu_set_tex_max_mip_ext=(sampler_id,maxmip)&gpu_set_tex_max_aniso=(maxaniso)&gpu_set_tex_max_aniso_ext=(sampler_id,maxaniso)&gpu_set_tex_mip_enable=(setting)&gpu_set_tex_mip_enable_ext=(sampler_id,setting)&gpu_get_blendenable=():&gpu_get_ztestenable=():&gpu_get_zfunc=():&gpu_get_zwriteenable=():&gpu_get_depth=():&gpu_get_fog=():&gpu_get_cullmode=():&gpu_get_blendmode=():&gpu_get_blendmode_ext=():&gpu_get_blendmode_ext_sepalpha=():&gpu_get_blendmode_src=():&gpu_get_blendmode_dest=():&gpu_get_blendmode_srcalpha=():&gpu_get_blendmode_destalpha=():&gpu_get_blendequation=():&gpu_get_blendequation_sepalpha=():&gpu_get_colorwriteenable=()$:&gpu_get_colourwriteenable=()£:&gpu_get_alphatestenable=():&gpu_get_alphatestref=():&gpu_get_texfilter=():&gpu_get_texfilter_ext=(sampler_id):&gpu_get_texrepeat=():&gpu_get_texrepeat_ext=(sampler_id):&gpu_get_tex_filter=():&gpu_get_tex_filter_ext=(sampler_id):&gpu_get_tex_repeat=():&gpu_get_tex_repeat_ext=(sampler_id):&gpu_get_tex_mip_filter=():&gpu_get_tex_mip_filter_ext=(sampler_id):&gpu_get_tex_mip_bias=():&gpu_get_tex_mip_bias_ext=(sampler_id):&gpu_get_tex_min_mip=():&gpu_get_tex_min_mip_ext=(sampler_id):&gpu_get_tex_max_mip=():&gpu_get_tex_max_mip_ext=(sampler_id):&gpu_get_tex_max_aniso=():&gpu_get_tex_max_aniso_ext=(sampler_id):&gpu_get_tex_mip_enable=():&gpu_get_tex_mip_enable_ext=(sampler_id):&gpu_push_state=()&gpu_pop_state=()&gpu_get_state=():&gpu_set_state=(map)&draw_light_define_ambient=(col)&draw_light_define_direction=(ind,dx,dy,dz,col)&draw_light_define_point=(ind,x,y,z,range,col)&draw_light_enable=(ind,enable)&draw_set_lighting=(enable)&draw_light_get_ambient=():&draw_light_get=(ind):&draw_get_lighting=():&shop_leave_rating=(text_string,yes_string,no_string,url)&url_get_domain=():&url_open=(url)&url_open_ext=(url,target)&url_open_full=(url,target,options)&get_timer=():number&device_get_tilt_x=():&device_get_tilt_y=():&device_get_tilt_z=():&device_is_keypad_open=():&device_mouse_check_button=(:index,:index):&device_mouse_check_button_pressed=(:index,:index):&device_mouse_check_button_released=(:index,:index):&device_mouse_x=(:index):&device_mouse_y=(:index):&device_mouse_raw_x=(:index):&device_mouse_raw_y=(:index):&device_mouse_x_to_gui=(:index):&device_mouse_y_to_gui=(:index):&gamepad_is_supported=():&gamepad_get_device_count=():&gamepad_is_connected=(device):&gamepad_get_description=(device):&gamepad_get_button_threshold=(device):&gamepad_set_button_threshold=(device, threshold)&gamepad_get_axis_deadzone=(device):&gamepad_set_axis_deadzone=(device, deadzone)&gamepad_button_count=(device:index):&gamepad_button_check=(device:index, buttonIndex:index):&gamepad_button_check_pressed=(device:index, buttonIndex:index):&gamepad_button_check_released=(device:index, buttonIndex:index):&gamepad_button_value=(device:index, buttonIndex:index):&gamepad_axis_count=(axis:index):&gamepad_axis_value=(device:index, axisIndex:index):&gamepad_set_vibration=(device, leftMotorSpeed, rightMotorSpeed)&gamepad_set_colour=(index,colour)£&gamepad_set_color=(index,color)$&gamepad_hat_count=(axis)&gamepad_hat_value=(device, axisIndex)&gamepad_remove_mapping=(device)&gamepad_test_mapping=(device, mapping_string)&gamepad_get_mapping=(device):&gamepad_get_guid=(device):&gamepad_set_option=(gamepad_id, option_key, option_value)&gamepad_get_option=(gamepad_id, option_key):&gamepad_enumerate=()&os_is_paused=():&window_has_focus=():&code_is_compiled=():&http_get=(url):&http_get_file=(url, dest):&http_post_string=(:string,:string):&http_request=(url:string, method, header_map, body):&http_get_request_crossorigin=():&http_set_request_crossorigin=(crossorigin_type)&json_encode=(:id):string&json_decode=(:string):id&json_stringify=(val, [prettify], [filter_func])&json_parse=(json, [filter_func], [inhibit_string_convert])&zip_unzip=(zip:string, path:string):int&zip_unzip_async=(file, destPath)&zip_create=():&zip_add_file=(zip_object, dest, src)&zip_save=(zip_object, path)&load_csv=(:string):array2d&base64_encode=(:string):string&base64_decode=(:string):string&md5_string_unicode=(:string):string&md5_string_utf8=(:string):string&md5_file=(:string):string&os_is_network_connected=(attempt_connection,...):&sha1_string_unicode=(:string):string&sha1_string_utf8=(:string):string&sha1_file=(:string):string&os_powersave_enable=(enable)&physics_world_create=(PixelToMetreScale):&physics_world_gravity=(gx, gy)&physics_world_update_speed=(speed)&physics_world_update_iterations=(iterations)&physics_world_draw_debug=(draw_flags)&physics_pause_enable=(pause)&physics_fixture_create=():&physics_fixture_set_kinematic=(fixture)&physics_fixture_set_density=(fixture, density)&physics_fixture_set_awake=(fixture, flag)&physics_fixture_set_restitution=(fixture, restitution)&physics_fixture_set_friction=(fixture,friction)&physics_fixture_set_collision_group=(fixture, group)&physics_fixture_set_sensor=(fixture, sensorState)&physics_fixture_set_linear_damping=(fixture, damping)&physics_fixture_set_angular_damping=(fixture, damping)&physics_fixture_set_circle_shape=(fixture, circleRadius)&physics_fixture_set_box_shape=(fixture, halfWidth, halfHeight)&physics_fixture_set_edge_shape=(fixture, x1,y1,x2,y2)&physics_fixture_set_polygon_shape=(fixture)&physics_fixture_set_chain_shape=(fixture, loop)&physics_fixture_add_point=(fixture, local_x, local_y)&physics_fixture_bind=:(fixture, target):&physics_fixture_bind_ext=:(fixture, target, xoffset, yoffset):&physics_fixture_delete=(fixture)&physics_apply_force=:(xpos, ypos, xforce, yforce)&physics_apply_impulse=:(xpos, ypos, ximpulse, yimpulse)&physics_apply_angular_impulse=:(impulse)&physics_apply_local_force=:(xlocal, ylocal, xforce_local, yforce_local)&physics_apply_local_impulse=:(xlocal, ylocal, ximpulse_local, yimpulse_local)&physics_apply_torque=:(torque)&physics_mass_properties=:(mass, local_centre_of_mass_x, local_centre_of_mass_y, inertia)&physics_draw_debug=:()&physics_test_overlap=:(x:number, y:number, angle:number, obj:index):&physics_remove_fixture=(inst, id)&physics_set_friction=:(fixture, friction)&physics_set_density=:(fixture, density)&physics_set_restitution=:(fixture, restitution)&physics_get_friction=:(fixture):&physics_get_density=:(fixture):&physics_get_restitution=:(fixture):&physics_joint_distance_create=(inst1, inst2, anchor_1_x, anchor_1_y, anchor_2_x, anchor_2_y, collideInstances):&physics_joint_rope_create=(inst1, inst2, anchor_1_x, anchor_1_y, anchor_2_x, anchor_2_y, maxLength, collideInstances):&physics_joint_revolute_create=(inst1, inst2, anchor_x, anchor_y, lower_angle_limit, upper_angle_limit, enable_limit, max_motor_torque, motor_speed, enable_motor, collideInstances):&physics_joint_prismatic_create=(inst1, inst2, anchor_x, anchor_y, axis_x, axis_y, lower_translation_limit, upper_translation_limit, enable_limit, max_motor_force, motor_speed, enable_motor, collideInstances):&physics_joint_pulley_create=(inst1, inst2, anchor_1_x, anchor_1_y, anchor_2_x, anchor_2_y, local_anchor_1_x, local_anchor_1_y, local_anchor_2_x, local_anchor_2_y, ratio, collideInstances):&physics_joint_wheel_create=(inst1, inst2, anchor_x, anchor_y, axis_x, axis_y, enableMotor, max_motor_torque, motor_speed, freq_hz, damping_ratio, collideInstances):&physics_joint_weld_create=(inst1, inst2, anchor_x, anchor_y, ref_angle, freq_hz, damping_ratio, collideInstances):&physics_joint_friction_create=(inst1, inst2, anchor_x, anchor_y, max_force, max_torque, collideInstances):&physics_joint_gear_create=(inst1, inst2, revoluteJoint, prismaticJoint, ratio):&physics_joint_enable_motor=(joint, motorState)&physics_joint_get_value=(joint, field):&physics_joint_set_value=(joint, field, value)&physics_joint_delete=(joint)&physics_particle_create=(typeflags, x, y, xv, yv, col, alpha, category):&physics_particle_delete=(ind)&physics_particle_delete_region_circle=(x, y, radius)&physics_particle_delete_region_box=(x, y, halfWidth, halfHeight)&physics_particle_delete_region_poly=(pointList)&physics_particle_set_flags=(ind, typeflags)&physics_particle_set_category_flags=(category, typeflags)&physics_particle_draw=(typemask, category, sprite, subimg)&physics_particle_draw_ext=(typemask, category, sprite, subimg, xscale, yscale, angle, col, alpha)&physics_particle_count=():&physics_particle_get_data=(buffer, dataFlags):&physics_particle_get_data_particle=(ind, buffer, dataFlags):&physics_particle_group_begin=(typeflags, groupflags, x, y, ang, xv, yv, angVelocity, col, alpha, strength, category)&physics_particle_group_circle=(radius)&physics_particle_group_box=(halfWidth, halfHeight)&physics_particle_group_polygon=()&physics_particle_group_add_point=(x, y)&physics_particle_group_end=():&physics_particle_group_join=(to, from)&physics_particle_group_delete=(ind)&physics_particle_group_count=(group)&physics_particle_group_get_data=(group, buffer, dataFlags):&physics_particle_group_get_mass=(group):&physics_particle_group_get_inertia=(group):&physics_particle_group_get_centre_x=(group):&physics_particle_group_get_centre_y=(group):&physics_particle_group_get_vel_x=(group):&physics_particle_group_get_vel_y=(group):&physics_particle_group_get_ang_vel=(group):&physics_particle_group_get_x=(group):&physics_particle_group_get_y=(group):&physics_particle_group_get_angle=(group):&physics_particle_set_group_flags=(group, groupflags)&physics_particle_get_group_flags=(group):&physics_particle_get_max_count=():&physics_particle_get_radius=():&physics_particle_get_density=():&physics_particle_get_damping=():&physics_particle_get_gravity_scale=():&physics_particle_set_max_count=(count)&physics_particle_set_radius=(radius)&physics_particle_set_density=(density)&physics_particle_set_damping=(damping)&physics_particle_set_gravity_scale=(scale)&network_create_socket=(type:int):id&network_create_socket_ext=(type:int, port:int):id&network_create_server=(type:int, port:int, maxclients:int):id&network_create_server_raw=(type:int, port:int, maxclients:int):id&network_connect=(:id, url:string, port:int):int&network_connect_raw=(:id, url:string, port:int):id&network_connect_async=(:id, url:string, port:int):int&network_connect_raw_async=(:id, url:string, port:int):int&network_send_packet=(:id, :id, size:int):int&network_send_raw=(:id, :id, size:int):int&network_send_broadcast=(:id, port:int, :id, size:int):int&network_send_udp=(:id, URL:string, port:int, data:id, size:int):int&network_send_udp_raw=(:id, URL:string, port:int, data:id, size:int):int&network_set_timeout=(:id, read:number, write:number)&network_set_config=(parameter, value)&network_resolve=(url:string):string&network_destroy=(:id)&buffer_create=(size:int, buffer_type:int, alignment:int):id&buffer_write=(:id, type:int, value)&buffer_read=(:id, type:int):&buffer_seek=(:id, base:int, offset:int)&buffer_get_surface=(:id, :id, mode:int, offset:int, modulo:int):&buffer_set_surface=(:id, :id, mode:int, offset:int, modulo:int)&buffer_set_used_size=(buffer,size)&buffer_delete=(:id)&buffer_exists=(:id):bool&buffer_get_type=(:id):int&buffer_get_alignment=(:id):int&buffer_poke=(:id, offset:int, type:int, value)&buffer_peek=(:id, offset:int, type:int):&buffer_save=(:id, filename:string)&buffer_save_ext=(:id, filename:string, offset:int, size:int)&buffer_load=(filename:string):id&buffer_load_ext=(:id, filename:string, offset:int):&buffer_load_partial=(:id, filename:string, src_offset:int, src_len:int, dest_offset:int):&buffer_copy=(src_buffer, src_offset:int, size:int, dest:id, dest_offset:int)&buffer_copy_stride=(src_buffer, src_offset, src_size, src_stride, src_count, dest_buffer, dest_offset, dest_stride)&buffer_fill=(:id, offset:int, type:int, value, size:int)&buffer_get_size=(:id):int&buffer_tell=(:id):int&buffer_resize=(:id, newsize:int)&buffer_md5=(:id, offset:int, size:int):string&buffer_sha1=(:id, offset:int, size:int):string&buffer_crc32=(:id, offset:int, size:int):int&buffer_base64_encode=(:id, offset:int, size:int):string&buffer_base64_decode=(string):id&buffer_base64_decode_ext=(:id, :string, offset:int)&buffer_sizeof=(type:int):int&buffer_get_address=(:id):&buffer_create_from_vertex_buffer=(:id, type, alignment):&buffer_create_from_vertex_buffer_ext=(:id, type, alignment, start_vertex, num_vertices):&buffer_copy_from_vertex_buffer=(vertex_buffer, start_vertex, num_vertices, dest_buffer, dest_offset)&buffer_async_group_begin=(groupname)&buffer_async_group_option=(optionname,optionvalue)&buffer_async_group_end=()&buffer_load_async=(:id,filename:string,offset:int,size:int):&buffer_save_async=(:id,filename:string,offset:int,size:int):&buffer_compress=(:id, offset:int, size:int):id&buffer_decompress=(:id):id&gml_release_mode=(enable)&shader_set=(shader)&shader_get_name=(shader):&shader_reset=()&shader_current=():&shader_is_compiled=(shader):&shader_get_sampler_index=(shader,uniform_name):&shader_get_uniform=(shader,uniform_name):&shader_set_uniform_i=(uniform_id,val,....)&shader_set_uniform_i_array=(uniform_id,array)&shader_set_uniform_f=(uniform_id,val,....)&shader_set_uniform_f_array=(uniform_id,array)&shader_set_uniform_f_buffer=(uniform_id,buffer,offset,count)&shader_set_uniform_matrix=(uniform_id)&shader_set_uniform_matrix_array=(uniform_id,array)&shader_enable_corner_id=(enable)&texture_set_stage=(sampled_id, texture_id)&texture_get_texel_width=(texture_id):&texture_get_texel_height=(texture_id):&shaders_are_supported=():&vertex_format_begin=()&vertex_format_end=():&vertex_format_delete=(format_id)&vertex_format_add_position=()&vertex_format_add_position_3d=()&vertex_format_add_colour=()£&vertex_format_add_color=()$&vertex_format_add_normal=()&vertex_format_add_texcoord=()&vertex_format_add_custom=(type,usage)&vertex_format_get_info=(format_id):&vertex_create_buffer=():&vertex_create_buffer_ext=(size):&vertex_delete_buffer=(vbuff)&vertex_begin=(vbuff,format)&vertex_end=(vbuff)&vertex_position=(vbuff,x,y)&vertex_position_3d=(vbuff,x,y,z)&vertex_colour=(vbuff,colour,alpha)£&vertex_color=(vbuff,color,alpha)$&vertex_argb=(vbuff,argb)&vertex_texcoord=(vbuff,u,v)&vertex_normal=(vbuff,nx,ny,nz)&vertex_float1=(vbuff,f1)&vertex_float2=(vbuff,f1,f2)&vertex_float3=(vbuff,f1,f2,f3)&vertex_float4=(vbuff,f1,f2,f3,f4)&vertex_ubyte4=(vbuff,b1,b2,b3,b4)&vertex_submit=(vbuff,prim,texture)&vertex_submit_ext=(vbuff,prim,texture,offset,num)&vertex_freeze=(vbuff)&vertex_get_number=(vbuff):&vertex_get_buffer_size=(vbuff):&vertex_create_buffer_from_buffer=(src_buffer,format):&vertex_create_buffer_from_buffer_ext=(src_buffer,format,src_offset,num_vertices):&vertex_update_buffer_from_buffer=(dest_vbuff,dest_offset,src_buffer,[src_offset],[src_size])&vertex_update_buffer_from_vertex=(dest_vbuff,dest_vert,src_vbuff,[src_vert],[src_vert_num])&skeleton_animation_set=:(anim_name, [loop])!&skeleton_animation_get=:()!:&skeleton_animation_mix=:(anim_from,anim_to,duration)!&skeleton_animation_set_ext=:(anim_name, track, [loop])!&skeleton_animation_get_ext=:(track)!:&skeleton_animation_get_duration=:(anim_name)!:&skeleton_animation_get_frames=:(anim_name)!:&skeleton_animation_clear=:(track,[reset],[duration])!&skeleton_skin_set=:(skin_name)!&skeleton_skin_get=:()!:&skeleton_skin_create=:(skin_name, base_skins)!:&skeleton_attachment_set=:(slot, attachment)!&skeleton_attachment_get=:(slot)!:&skeleton_attachment_create=:(name,sprite,ind,xo,yo,xs,ys,rot)!:&skeleton_attachment_create_colour=:(name,sprite,ind,xo,yo,xs,ys,rot,col,alpha)!£:&skeleton_attachment_create_color=:(name,sprite,ind,xo,yo,xs,ys,rot,col,alpha)!$:&skeleton_attachment_exists=:(name)!:&skeleton_attachment_replace=:(name,sprite,ind,xo,yo,xs,ys,rot)!&skeleton_attachment_replace_colour=:(name,sprite,ind,xo,yo,xs,ys,rot,col,alpha)!£&skeleton_attachment_replace_color=:(name,sprite,ind,xo,yo,xs,ys,rot,col,alpha)!$&skeleton_attachment_destroy=:(name)!&skeleton_collision_draw_set=:(val)!&skeleton_bone_data_get=:(bone, map)!:&skeleton_bone_data_set=:(bone, map)!&skeleton_bone_state_get=:(bone, map)!:&skeleton_bone_state_set=:(bone, map)!&skeleton_slot_colour_set=:(slot,col,alpha)!£&skeleton_slot_color_set=:(slot,col,alpha)!$&skeleton_slot_colour_get=:(slot)!£:&skeleton_slot_color_get=:(slot)!$:&skeleton_slot_alpha_get=:(slot)!:&skeleton_find_slot=:(x,y,list)!:&skeleton_get_minmax=:()!:&skeleton_get_num_bounds=:()!:&skeleton_get_bounds=:(index)!:&skeleton_animation_get_frame=:(track)!:&skeleton_animation_set_frame=:(track,index)!&skeleton_animation_get_position=:(track)!:&skeleton_animation_set_position=:(track,position)!&skeleton_animation_get_event_frames=:(anim_name,event_name)!:&skeleton_animation_is_looping=:(track)!:&skeleton_animation_is_finished=:(track)!:&draw_skeleton=:(sprite,animname,skinname,frame,x,y,xscale,yscale,rot,col,alpha)!&draw_skeleton_time=:(sprite, animname,skinname, time, x,y, xscale,yscale, rot, col,alpha)!&draw_skeleton_instance=:(instance, animname,skinname,frame,x,y,xscale,yscale,rot,col,alpha)!&draw_skeleton_collision=:(sprite,animname,frame,x,y,xscale,yscale,rot,col)!&draw_enable_skeleton_blendmodes=:(enable)!&draw_get_enable_skeleton_blendmodes=:()!:&skeleton_animation_list=:(sprite, list)!&skeleton_skin_list=:(sprite, list)!&skeleton_bone_list=:(sprite, list)!&skeleton_slot_list=:(sprite, list)!&skeleton_slot_data=:(sprite, list)!&skeleton_slot_data_instance=:(list)!&layer_get_id=(layer_name):&layer_get_id_at_depth=(depth):&layer_get_depth=(layer_id):&layer_create=(depth:number, ?name:string):&layer_destroy=(layer_id)&layer_destroy_instances=(layer_id)&layer_add_instance=(layer_id,instance)&layer_has_instance=(layer, inst):bool&layer_set_visible=(layer_id,visible)&layer_get_visible=(layer_id):&layer_exists=(layer_id):&layer_x=(layer_id,x)&layer_y=(layer_id,y)&layer_get_x=(layer_id):&layer_get_y=(layer_id):&layer_hspeed=(layer_id,speed)&layer_vspeed=(layer_id,speed)&layer_get_hspeed=(layer_id):&layer_get_vspeed=(layer_id):&layer_script_begin=(layer_id,script)&layer_script_end=(layer_id,script)&layer_shader=(layer_id,shader)&layer_get_script_begin=(layer_id):&layer_get_script_end=(layer_id):&layer_get_shader=(layer_id):&layer_set_target_room=(room)&layer_get_target_room=():&layer_reset_target_room=()&layer_get_all=():&layer_get_all_elements=(layer_id):&layer_get_name=(layer_id):&layer_depth=(layer_id, depth)&layer_get_element_layer=(element_id):&layer_get_element_type=(element_id):&layer_element_move=(element_id,layer_id)&layer_force_draw_depth=(force,depth)&layer_is_draw_depth_forced=():&layer_get_forced_depth=():&layer_background_get_id=(layer_id):&layer_background_exists=(layer_id,background_element_id):&layer_background_create=(layer_id,sprite):&layer_background_destroy=(background_element_id)&layer_background_visible=(background_element_id,visible)&layer_background_change=(background_element_id,sprite)&layer_background_sprite=(background_element_id,sprite)&layer_background_htiled=(background_element_id,tiled)&layer_background_vtiled=(background_element_id,tiled)&layer_background_stretch=(background_element_id,stretch)&layer_background_yscale=(background_element_id,yscale)&layer_background_xscale=(background_element_id,xscale)&layer_background_blend=(background_element_id,col)&layer_background_alpha=(background_element_id,alpha)&layer_background_index=(background_element_id,image_index)&layer_background_speed=(background_element_id,image_speed)&layer_background_get_visible=(background_element_id):&layer_background_get_sprite=(background_element_id):&layer_background_get_htiled=(background_element_id):&layer_background_get_vtiled=(background_element_id):&layer_background_get_stretch=(background_element_id):&layer_background_get_yscale=(background_element_id):&layer_background_get_xscale=(background_element_id):&layer_background_get_blend=(background_element_id):&layer_background_get_alpha=(background_element_id):&layer_background_get_index=(background_element_id):&layer_background_get_speed=(background_element_id):&layer_sprite_get_id=(layer_id,sprite_element_name):&layer_sprite_exists=(layer_id,sprite_element_id):&layer_sprite_create=(layer_id,x,y,sprite):&layer_sprite_destroy=(sprite_element_id)&layer_sprite_change=(sprite_element_id,sprite)&layer_sprite_index=(sprite_element_id,image_index)&layer_sprite_speed=(sprite_element_id,image_speed)&layer_sprite_xscale=(sprite_element_id,scale)&layer_sprite_yscale=(sprite_element_id,scale)&layer_sprite_angle=(sprite_element_id,angle)&layer_sprite_blend=(sprite_element_id,col)&layer_sprite_alpha=(sprite_element_id,alpha)&layer_sprite_x=(sprite_element_id,x)&layer_sprite_y=(sprite_element_id,y)&layer_sprite_get_sprite=(sprite_element_id):&layer_sprite_get_index=(sprite_element_id):&layer_sprite_get_speed=(sprite_element_id):&layer_sprite_get_xscale=(sprite_element_id):&layer_sprite_get_yscale=(sprite_element_id):&layer_sprite_get_angle=(sprite_element_id):&layer_sprite_get_blend=(sprite_element_id):&layer_sprite_get_alpha=(sprite_element_id):&layer_sprite_get_x=(sprite_element_id):&layer_sprite_get_y=(sprite_element_id):&layer_tilemap_get_id=(layer_id):&layer_tilemap_exists=(layer_id,tilemap_element_id):&layer_tilemap_create=(layer_id,x,y,tileset,width,height):&layer_tilemap_destroy=(tilemap_element_id)&tilemap_tileset=(tilemap_element_id,tileset)&tilemap_x=(tilemap_element_id,x)&tilemap_y=(tilemap_element_id,y)&tilemap_set=(tilemap_element_id,tiledata,cell_x,cell_y)&tilemap_set_at_pixel=(tilemap_element_id,tiledata,x,y)&tileset_get_texture=(tileset_id):&tileset_get_uvs=(tileset_id):&tileset_get_name=(tileset_id):&tileset_get_info=(tileset_id):&tilemap_get_tileset=(tilemap_element_id):&tilemap_get_tile_width=(tilemap_element_id):&tilemap_get_tile_height=(tilemap_element_id):&tilemap_get_width=(tilemap_element_id):&tilemap_get_height=(tilemap_element_id):&tilemap_set_width=(tilemap_element_id, width)&tilemap_set_height=(tilemap_element_id, height)&tilemap_get_x=(tilemap_element_id):&tilemap_get_y=(tilemap_element_id):&tilemap_get=(tilemap_element_id,cell_x,cell_y):&tilemap_get_at_pixel=(tilemap_element_id,x,y):&tilemap_get_cell_x_at_pixel=(tilemap_element_id,x,y):&tilemap_get_cell_y_at_pixel=(tilemap_element_id,x,y):&tilemap_clear=(tilemap_element_id,tiledata)&draw_tilemap=(tilemap_element_id,x,y)&draw_tile=(tileset,tiledata,frame,x,y)&tilemap_set_global_mask=(mask)&tilemap_get_global_mask=():&tilemap_set_mask=(tilemap_element_id, mask)&tilemap_get_mask=(tilemap_element_id):&tilemap_get_frame=(tilemap_element_id):&tile_set_empty=(tiledata:number):&tile_set_index=(tiledata:number,tileindex:index):&tile_set_flip=(tiledata:number,flip:bool):&tile_set_mirror=(tiledata:number,mirror:bool):&tile_set_rotate=(tiledata:number,rotate:bool):&tile_get_empty=(tiledata):&tile_get_index=(tiledata):&tile_get_flip=(tiledata):&tile_get_mirror=(tiledata):&tile_get_rotate=(tiledata):&layer_instance_get_instance=(instance_element_id):&instance_activate_layer=(layer_id)&instance_deactivate_layer=(layer_id)&camera_create=():&camera_create_view=(room_x, room_y, width, height, ?angle, ?object, ?x_speed, ?y_speed, ?x_border, ?y_border):&camera_destroy=(camera)&camera_apply=(camera)&camera_copy_transforms=(dest_camera,src_camera)&camera_get_active=():&camera_get_default=():&camera_set_default=(camera)&camera_set_view_mat=(camera,matrix)&camera_set_proj_mat=(camera,matrix)&camera_set_update_script=(camera,script)&camera_set_begin_script=(camera,script)&camera_set_end_script=(camera,script)&camera_set_view_pos=(camera,x,y)&camera_set_view_size=(camera,width,height)&camera_set_view_speed=(camera,x_speed,y_speed)&camera_set_view_border=(camera,x_border,y_border)&camera_set_view_angle=(camera,angle)&camera_set_view_target=(camera,object)&camera_get_view_mat=(camera):&camera_get_proj_mat=(camera):&camera_get_update_script=(camera):&camera_get_begin_script=(camera):&camera_get_end_script=(camera):&camera_get_view_x=(camera):&camera_get_view_y=(camera):&camera_get_view_width=(camera):&camera_get_view_height=(camera):&camera_get_view_speed_x=(camera):&camera_get_view_speed_y=(camera):&camera_get_view_border_x=(camera):&camera_get_view_border_y=(camera):&camera_get_view_angle=(camera):&camera_get_view_target=(camera):&view_get_camera=(view):&view_get_visible=(view):&view_get_xport=(view):&view_get_yport=(view):&view_get_wport=(view):&view_get_hport=(view):&view_get_surface_id=(view):&view_set_camera=(view,camera)&view_set_visible=(view,visible)&view_set_xport=(view,xport)&view_set_yport=(view,yport)&view_set_wport=(view,wport)&view_set_hport=(view,hport)&view_set_surface_id=(view,surface_id)&gesture_drag_time=(time)&gesture_drag_distance=(distance)&gesture_flick_speed=(speed)&gesture_double_tap_time=(time)&gesture_double_tap_distance=(distance)&gesture_pinch_distance=(distance)&gesture_pinch_angle_towards=(angle)&gesture_pinch_angle_away=(angle)&gesture_rotate_time=(time)&gesture_rotate_angle=(angle)&gesture_tap_count=(enable)&gesture_get_drag_time=():&gesture_get_drag_distance=():&gesture_get_flick_speed=():&gesture_get_double_tap_time=():&gesture_get_double_tap_distance=():&gesture_get_pinch_distance=():&gesture_get_pinch_angle_towards=():&gesture_get_pinch_angle_away=():&gesture_get_rotate_time=():&gesture_get_rotate_angle=():&gesture_get_tap_count=():&keyboard_virtual_show=(virtual_keyboard_type, virtual_return_key_type, auto_capitalization_type, predictive_text_enabled)&keyboard_virtual_hide=()&keyboard_virtual_status=()&keyboard_virtual_height=()&tag_get_asset_ids=(tags,asset_type):&tag_get_assets=(tags):&asset_get_tags=(asset_name_or_id,[asset_type]):&asset_add_tags=(asset_name_or_id,tags,?asset_type):&asset_remove_tags=(asset_name_or_id,tags,?asset_type):&asset_has_tags=(asset_name_or_id,tags,?asset_type):&asset_has_any_tag=(asset_name_or_id,tags,?asset_type):&asset_clear_tags=(asset_name_or_id,?asset_type):&extension_exists=(ext_name):&extension_get_version=(ext_name):&extension_get_option_count=(ext_name):&extension_get_option_names=(ext_name):&extension_get_option_value=(ext_name, option_name):&extension_get_options=(ext_name):&layer_sequence_get_instance=(sequence_element_id):&layer_sequence_create=(layer_id,x,y,sequence_id):&layer_sequence_destroy=(sequence_element_id)&layer_sequence_exists=(layer_id,sequence_element_id):&layer_sequence_x=(sequence_element_id,pos_x)&layer_sequence_y=(sequence_element_id,pos_y)&layer_sequence_angle=(sequence_element_id,angle)&layer_sequence_xscale=(sequence_element_id,xscale)&layer_sequence_yscale=(sequence_element_id,yscale)&layer_sequence_headpos=(sequence_element_id,position)&layer_sequence_headdir=(sequence_element_id,direction)&layer_sequence_pause=(sequence_element_id)&layer_sequence_play=(sequence_element_id)&layer_sequence_speedscale=(sequence_element_id,speedscale)&layer_sequence_get_x=(sequence_element_id):&layer_sequence_get_y=(sequence_element_id):&layer_sequence_get_angle=(sequence_element_id):&layer_sequence_get_xscale=(sequence_element_id):&layer_sequence_get_yscale=(sequence_element_id):&layer_sequence_get_headpos=(sequence_element_id):&layer_sequence_get_headdir=(sequence_element_id):&layer_sequence_get_sequence=(sequence_element_id):&layer_sequence_is_paused=(sequence_element_id):&layer_sequence_is_finished=(sequence_element_id):&layer_sequence_get_speedscale=(sequence_element_id):&layer_sequence_get_length=(sequence_element_id):&animcurve_get=(curve_id):&animcurve_get_channel=(curve_struct_or_id,channel_name_or_index):&animcurve_get_channel_index=(curve_struct_or_id,channel_name):&animcurve_channel_evaluate=(channel,posx):&sequence_create=():&sequence_destroy=(sequence_struct_or_id)&sequence_exists=(sequence_struct_or_id):&sequence_get=(sequence_id):&sequence_keyframe_new=(type):&sequence_keyframedata_new=(type):&sequence_track_new=(type):&sequence_get_objects=(sequence_struct_or_id):&sequence_instance_override_object=(sequence_instance_struct,object_id,instance_or_object_id)&animcurve_create=():&animcurve_destroy=(curve_struct_or_id)&animcurve_exists=(curve_struct_or_id):&animcurve_channel_new=():&animcurve_point_new=():&fx_create=(filter_or_effect_name):&fx_get_name=(filter_or_effect):&fx_get_parameter_names=(filter_or_effect):&fx_get_parameter=(filter_or_effect,parameter_name):&fx_get_parameters=(filter_or_effect):&fx_get_single_layer=(filter_or_effect):&fx_set_parameter=(filter_or_effect,parameter_name,val,...)&fx_set_parameters=(filter_or_effect,parameter_struct)&fx_set_single_layer=(filter_or_effect,enable)&layer_set_fx=(layer_name_or_id,filter_or_effect)&layer_get_fx=(layer_name_or_id):&layer_clear_fx=(layer_name_or_id)&layer_enable_fx=(layer_name_or_id,enable)&layer_fx_is_enabled=(layer_name_or_id):&gc_collect=()&gc_enable=(enable)&gc_is_enabled=():&gc_get_stats=():&gc_target_frame_time=(time)&gc_get_target_frame_time=():&weak_ref_create=(thing_to_track):&weak_ref_alive=(weak_ref)&weak_ref_any_alive=(array,[index],[length])&time_source_create=(parent,period,units,callback,[args],[reps],[expiryType]):&time_source_destroy=(id, [destroyTree])&time_source_start=(id)&time_source_stop=(id)&time_source_pause=(id)&time_source_resume=(id)&time_source_reset=(id)&time_source_reconfigure=(id,period,units,callback,[args],[reps],[expiryType])&time_source_get_period=(id):&time_source_get_reps_completed=(id):&time_source_get_reps_remaining=(id):&time_source_get_units=(id):&time_source_get_time_remaining=(id):&time_source_get_state=(id):&time_source_get_parent=(id):&time_source_get_children=(id):&time_source_exists=(id):&time_seconds_to_bpm=(seconds)&time_bpm_to_seconds=(bpm)&call_later=(period, units, callback, [repeat])&call_cancel=(handle)&rollback_use_manual_start=()^rollback&rollback_use_late_join=()^rollback&rollback_define_player=(player_obj,...)^rollback&rollback_define_input=(input)^rollback&rollback_define_mock_input=(player_id,input)^rollback&rollback_define_input_frame_delay=(frames)^rollback&rollback_define_extra_network_latency=(latency)^rollback&rollback_create_game=(num_players,...)^rollback:&rollback_join_game=(...)^rollback&rollback_start_game=()^rollback&rollback_leave_game=()^rollback&rollback_get_input=(...)^rollback:&rollback_chat=(message,...)^rollback&rollback_use_player_prefs=(...)^rollback&rollback_set_player_prefs=(preferences)^rollback&rollback_get_player_prefs=(...)^rollback:&rollback_get_info=(...)^rollback:&rollback_use_random_input=(enabled)^rollback&rollback_display_events=(enabled)^rollback&rollback_sync_on_frame=()^rollback&wallpaper_set_config=(config)^rollback&wallpaper_set_subscriptions=(subscriptions)^live_wallpaper_subscription&audio_bus_create=():&audio_effect_create=(type, [params]):&audio_emitter_bus=(emitter_idx, bus)&audio_emitter_get_bus=(emitter_idx):&audio_bus_get_emitters=(bus):&audio_bus_clear_emitters=(bus)&lin_to_db=(x)&db_to_lin=(x)");
	while(!file_text_eof(l_lines)){
		var l_line=file_text_read_string(l_lines);
		file_text_readln(l_lines);
		var l_sep=string_pos("=",l_line);
		var l_name=string_copy(l_line,1,l_sep-1);
		var l_sig=string_delete(l_line,1,l_sep);
		l_sep=string_pos("(",l_sig);
		l_sig=string_insert(l_name,l_sig,l_sep);
		if(l_isJS){
			var l_jsFunc;
			try{
				l_jsFunc=live_preinit_js_func(l_jsIndex);
				if(l_jsFunc==undefined)l_jsFunc=l_jsDummy;
			}catch(l__g){
				l_jsFunc=l_jsDummy
			}
			l_jsIndex++;
			gml_func_add(l_sig,l_jsFunc);
		} else {
			var l_m=l_fm[?l_name];
			if(l_m==undefined)continue;
			l_m.used=true;
			l_func=l_m.func;
			gml_func_add(l_sig,l_func);
		}
	}
	file_text_close(l_lines);
	if(!l_isJS){
		for(var l_i=0,l__g1=ds_list_size(l_fl);l_i<l__g1;l_i++){
			var l_m=l_fl[|l_i];
			if(l_m.used)continue;
			gml_func_add(":::"+l_m.name+"(...):",l_m.func);
		}
	}
	ds_map_destroy(l_fm);
	ds_list_destroy(l_fl);
}

if(live_enabled)
function live_preinit_collect_constants(){
	/*
		If you are getting an error in this function, a constant doesn't exist in your runtime version.
		You can get around this by replacing it with `undefined` or adding a dummy macro like
		#macro missing_constant undefined
	*/;
	var l_gmlConstValues=[];
	l_gmlConstValues=[
		undefined,
		pointer_invalid,
		pointer_null,
		path_action_stop,
		path_action_restart,
		path_action_continue,
		path_action_reverse,
		pi,
		NaN,
		infinity,
		GM_build_date,
		GM_version,
		GM_runtime_version,
		timezone_local,
		timezone_utc,
		gamespeed_fps,
		gamespeed_microseconds,
		ev_create,
		ev_destroy,
		ev_step,
		ev_alarm,
		ev_keyboard,
		ev_mouse,
		ev_collision,
		ev_other,
		ev_draw,
		ev_draw_begin,
		ev_draw_end,
		ev_draw_pre,
		ev_draw_post,
		ev_keypress,
		ev_keyrelease,
		ev_trigger,
		ev_left_button,
		ev_right_button,
		ev_middle_button,
		ev_no_button,
		ev_left_press,
		ev_right_press,
		ev_middle_press,
		ev_left_release,
		ev_right_release,
		ev_middle_release,
		ev_mouse_enter,
		ev_mouse_leave,
		ev_mouse_wheel_up,
		ev_mouse_wheel_down,
		ev_global_left_button,
		ev_global_right_button,
		ev_global_middle_button,
		ev_global_left_press,
		ev_global_right_press,
		ev_global_middle_press,
		ev_global_left_release,
		ev_global_right_release,
		ev_global_middle_release,
		ev_joystick1_left,
		ev_joystick1_right,
		ev_joystick1_up,
		ev_joystick1_down,
		ev_joystick1_button1,
		ev_joystick1_button2,
		ev_joystick1_button3,
		ev_joystick1_button4,
		ev_joystick1_button5,
		ev_joystick1_button6,
		ev_joystick1_button7,
		ev_joystick1_button8,
		ev_joystick2_left,
		ev_joystick2_right,
		ev_joystick2_up,
		ev_joystick2_down,
		ev_joystick2_button1,
		ev_joystick2_button2,
		ev_joystick2_button3,
		ev_joystick2_button4,
		ev_joystick2_button5,
		ev_joystick2_button6,
		ev_joystick2_button7,
		ev_joystick2_button8,
		ev_outside,
		ev_boundary,
		ev_game_start,
		ev_game_end,
		ev_room_start,
		ev_room_end,
		ev_no_more_lives,
		ev_animation_end,
		ev_end_of_path,
		ev_no_more_health,
		ev_user0,
		ev_user1,
		ev_user2,
		ev_user3,
		ev_user4,
		ev_user5,
		ev_user6,
		ev_user7,
		ev_user8,
		ev_user9,
		ev_user10,
		ev_user11,
		ev_user12,
		ev_user13,
		ev_user14,
		ev_user15,
		ev_outside_view0,
		ev_outside_view1,
		ev_outside_view2,
		ev_outside_view3,
		ev_outside_view4,
		ev_outside_view5,
		ev_outside_view6,
		ev_outside_view7,
		ev_boundary_view0,
		ev_boundary_view1,
		ev_boundary_view2,
		ev_boundary_view3,
		ev_boundary_view4,
		ev_boundary_view5,
		ev_boundary_view6,
		ev_boundary_view7,
		ev_animation_update,
		ev_animation_event,
		ev_web_image_load,
		ev_web_sound_load,
		ev_web_async,
		ev_dialog_async,
		ev_web_iap,
		ev_web_cloud,
		ev_web_networking,
		ev_web_steam,
		ev_social,
		ev_push_notification,
		ev_async_save_load,
		ev_audio_recording,
		ev_audio_playback,
		ev_system_event,
		ev_broadcast_message,
		ev_step_normal,
		ev_step_begin,
		ev_step_end,
		ev_gui,
		ev_gui_begin,
		ev_gui_end,
		ev_cleanup,
		ev_gesture,
		ev_gesture_tap,
		ev_gesture_double_tap,
		ev_gesture_drag_start,
		ev_gesture_dragging,
		ev_gesture_drag_end,
		ev_gesture_flick,
		ev_gesture_pinch_start,
		ev_gesture_pinch_in,
		ev_gesture_pinch_out,
		ev_gesture_pinch_end,
		ev_gesture_rotate_start,
		ev_gesture_rotating,
		ev_gesture_rotate_end,
		ev_global_gesture_tap,
		ev_global_gesture_double_tap,
		ev_global_gesture_drag_start,
		ev_global_gesture_dragging,
		ev_global_gesture_drag_end,
		ev_global_gesture_flick,
		ev_global_gesture_pinch_start,
		ev_global_gesture_pinch_in,
		ev_global_gesture_pinch_out,
		ev_global_gesture_pinch_end,
		ev_global_gesture_rotate_start,
		ev_global_gesture_rotating,
		ev_global_gesture_rotate_end,
		ev_async_web_image_load,
		ev_async_web,
		ev_async_dialog,
		ev_async_web_iap,
		ev_async_web_cloud,
		ev_async_web_networking,
		ev_async_web_steam,
		ev_async_social,
		ev_async_push_notification,
		ev_async_save_load,
		ev_async_audio_recording,
		ev_async_audio_playback,
		ev_async_system_event,
		vk_nokey,
		vk_anykey,
		vk_enter,
		vk_return,
		vk_shift,
		vk_control,
		vk_alt,
		vk_escape,
		vk_space,
		vk_backspace,
		vk_tab,
		vk_pause,
		vk_printscreen,
		vk_left,
		vk_right,
		vk_up,
		vk_down,
		vk_home,
		vk_end,
		vk_delete,
		vk_insert,
		vk_pageup,
		vk_pagedown,
		vk_f1,
		vk_f2,
		vk_f3,
		vk_f4,
		vk_f5,
		vk_f6,
		vk_f7,
		vk_f8,
		vk_f9,
		vk_f10,
		vk_f11,
		vk_f12,
		vk_numpad0,
		vk_numpad1,
		vk_numpad2,
		vk_numpad3,
		vk_numpad4,
		vk_numpad5,
		vk_numpad6,
		vk_numpad7,
		vk_numpad8,
		vk_numpad9,
		vk_divide,
		vk_multiply,
		vk_subtract,
		vk_add,
		vk_decimal,
		vk_lshift,
		vk_lcontrol,
		vk_lalt,
		vk_rshift,
		vk_rcontrol,
		vk_ralt,
		mb_any,
		mb_none,
		mb_left,
		mb_right,
		mb_middle,
		mb_side1,
		mb_side2,
		bboxmode_automatic,
		bboxmode_fullimage,
		bboxmode_manual,
		bboxkind_precise,
		bboxkind_rectangular,
		bboxkind_ellipse,
		bboxkind_diamond,
		c_aqua,
		c_black,
		c_blue,
		c_dkgray,
		c_dkgrey,
		c_fuchsia,
		c_gray,
		c_grey,
		c_green,
		c_lime,
		c_ltgray,
		c_ltgrey,
		c_maroon,
		c_navy,
		c_olive,
		c_purple,
		c_red,
		c_silver,
		c_teal,
		c_white,
		c_yellow,
		c_orange,
		fa_left,
		fa_center,
		fa_right,
		fa_top,
		fa_middle,
		fa_bottom,
		pr_pointlist,
		pr_linelist,
		pr_linestrip,
		pr_trianglelist,
		pr_trianglestrip,
		pr_trianglefan,
		bm_normal,
		bm_add,
		bm_max,
		bm_subtract,
		bm_zero,
		bm_one,
		bm_src_colour,
		bm_inv_src_colour,
		bm_src_color,
		bm_inv_src_color,
		bm_src_alpha,
		bm_inv_src_alpha,
		bm_dest_alpha,
		bm_inv_dest_alpha,
		bm_dest_colour,
		bm_inv_dest_colour,
		bm_dest_color,
		bm_inv_dest_color,
		bm_src_alpha_sat,
		tf_point,
		tf_linear,
		tf_anisotropic,
		mip_off,
		mip_on,
		mip_markedonly,
		audio_falloff_none,
		audio_falloff_inverse_distance,
		audio_falloff_inverse_distance_clamped,
		audio_falloff_linear_distance,
		audio_falloff_linear_distance_clamped,
		audio_falloff_exponent_distance,
		audio_falloff_exponent_distance_clamped,
		audio_mono,
		audio_stereo,
		cr_default,
		cr_none,
		cr_arrow,
		cr_cross,
		cr_beam,
		cr_size_nesw,
		cr_size_ns,
		cr_size_nwse,
		cr_size_we,
		cr_uparrow,
		cr_hourglass,
		cr_drag,
		cr_appstart,
		cr_handpoint,
		cr_size_all,
		spritespeed_framespersecond,
		spritespeed_framespergameframe,
		asset_object,
		asset_unknown,
		asset_sprite,
		asset_sound,
		asset_room,
		asset_path,
		asset_script,
		asset_font,
		asset_timeline,
		asset_tiles,
		asset_shader,
		asset_sequence,
		asset_animationcurve,
		fa_readonly,
		fa_hidden,
		fa_sysfile,
		fa_volumeid,
		fa_directory,
		fa_archive,
		ds_type_map,
		ds_type_list,
		ds_type_stack,
		ds_type_queue,
		ds_type_grid,
		ds_type_priority,
		ef_explosion,
		ef_ring,
		ef_ellipse,
		ef_firework,
		ef_smoke,
		ef_smokeup,
		ef_star,
		ef_spark,
		ef_flare,
		ef_cloud,
		ef_rain,
		ef_snow,
		pt_shape_pixel,
		pt_shape_disk,
		pt_shape_square,
		pt_shape_line,
		pt_shape_star,
		pt_shape_circle,
		pt_shape_ring,
		pt_shape_sphere,
		pt_shape_flare,
		pt_shape_spark,
		pt_shape_explosion,
		pt_shape_cloud,
		pt_shape_smoke,
		pt_shape_snow,
		ps_distr_linear,
		ps_distr_gaussian,
		ps_distr_invgaussian,
		ps_shape_rectangle,
		ps_shape_ellipse,
		ps_shape_diamond,
		ps_shape_line,
		matrix_view,
		matrix_projection,
		matrix_world,
		os_windows,
		os_macosx,
		os_ios,
		os_android,
		os_linux,
		os_unknown,
		os_winphone,
		os_win8native,
		os_psvita,
		os_ps4,
		os_xboxone,
		os_ps3,
		os_uwp,
		os_tvos,
		os_switch,
		os_ps5,
		os_xboxseriesxs,
		os_operagx,
		browser_not_a_browser,
		browser_unknown,
		browser_ie,
		browser_firefox,
		browser_chrome,
		browser_safari,
		browser_safari_mobile,
		browser_opera,
		browser_tizen,
		browser_edge,
		browser_windows_store,
		browser_ie_mobile,
		device_ios_unknown,
		device_ios_iphone,
		device_ios_iphone_retina,
		device_ios_ipad,
		device_ios_ipad_retina,
		device_ios_iphone5,
		device_ios_iphone6,
		device_ios_iphone6plus,
		device_emulator,
		device_tablet,
		display_landscape,
		display_landscape_flipped,
		display_portrait,
		display_portrait_flipped,
		tm_sleep,
		tm_countvsyncs,
		of_challenge_win,
		of_challenge_lose,
		of_challenge_tie,
		cmpfunc_never,
		cmpfunc_less,
		cmpfunc_equal,
		cmpfunc_lessequal,
		cmpfunc_greater,
		cmpfunc_notequal,
		cmpfunc_greaterequal,
		cmpfunc_always,
		cull_noculling,
		cull_clockwise,
		cull_counterclockwise,
		lighttype_dir,
		lighttype_point,
		phy_joint_anchor_1_x,
		phy_joint_anchor_1_y,
		phy_joint_anchor_2_x,
		phy_joint_anchor_2_y,
		phy_joint_reaction_force_x,
		phy_joint_reaction_force_y,
		phy_joint_reaction_torque,
		phy_joint_motor_speed,
		phy_joint_angle,
		phy_joint_motor_torque,
		phy_joint_max_motor_torque,
		phy_joint_translation,
		phy_joint_speed,
		phy_joint_motor_force,
		phy_joint_max_motor_force,
		phy_joint_length_1,
		phy_joint_length_2,
		phy_joint_damping_ratio,
		phy_joint_frequency,
		phy_joint_lower_angle_limit,
		phy_joint_upper_angle_limit,
		phy_joint_angle_limits,
		phy_joint_max_length,
		phy_joint_max_torque,
		phy_joint_max_force,
		phy_debug_render_aabb,
		phy_debug_render_collision_pairs,
		phy_debug_render_coms,
		phy_debug_render_core_shapes,
		phy_debug_render_joints,
		phy_debug_render_obb,
		phy_debug_render_shapes,
		phy_particle_flag_water,
		phy_particle_flag_zombie,
		phy_particle_flag_wall,
		phy_particle_flag_spring,
		phy_particle_flag_elastic,
		phy_particle_flag_viscous,
		phy_particle_flag_powder,
		phy_particle_flag_tensile,
		phy_particle_flag_colourmixing,
		phy_particle_group_flag_solid,
		phy_particle_group_flag_rigid,
		phy_particle_data_flag_typeflags,
		phy_particle_data_flag_position,
		phy_particle_data_flag_velocity,
		phy_particle_data_flag_colour,
		phy_particle_data_flag_category,
		network_socket_tcp,
		network_socket_udp,
		network_socket_ws,
		network_socket_bluetooth,
		network_type_connect,
		network_type_disconnect,
		network_type_data,
		network_type_non_blocking_connect,
		network_config_connect_timeout,
		network_config_use_non_blocking_socket,
		network_config_enable_reliable_udp,
		network_config_disable_reliable_udp,
		network_config_avoid_time_wait,
		buffer_fixed,
		buffer_grow,
		buffer_wrap,
		buffer_fast,
		buffer_vbuffer,
		buffer_u8,
		buffer_s8,
		buffer_u16,
		buffer_s16,
		buffer_u32,
		buffer_s32,
		buffer_u64,
		buffer_f16,
		buffer_f32,
		buffer_f64,
		buffer_bool,
		buffer_text,
		buffer_string,
		buffer_seek_start,
		buffer_seek_relative,
		buffer_seek_end,
		gp_face1,
		gp_face2,
		gp_face3,
		gp_face4,
		gp_shoulderl,
		gp_shoulderr,
		gp_shoulderlb,
		gp_shoulderrb,
		gp_select,
		gp_start,
		gp_stickl,
		gp_stickr,
		gp_padu,
		gp_padd,
		gp_padl,
		gp_padr,
		gp_axislh,
		gp_axislv,
		gp_axisrh,
		gp_axisrv,
		gp_axis_acceleration_x,
		gp_axis_acceleration_y,
		gp_axis_acceleration_z,
		gp_axis_angular_velocity_x,
		gp_axis_angular_velocity_y,
		gp_axis_angular_velocity_z,
		gp_axis_orientation_x,
		gp_axis_orientation_y,
		gp_axis_orientation_z,
		gp_axis_orientation_w,
		vertex_usage_position,
		vertex_usage_colour,
		vertex_usage_normal,
		vertex_usage_texcoord,
		vertex_usage_blendweight,
		vertex_usage_blendindices,
		vertex_usage_psize,
		vertex_usage_tangent,
		vertex_usage_binormal,
		vertex_usage_fog,
		vertex_usage_depth,
		vertex_usage_sample,
		vertex_type_float1,
		vertex_type_float2,
		vertex_type_float3,
		vertex_type_float4,
		vertex_type_colour,
		vertex_type_ubyte4,
		layerelementtype_undefined,
		layerelementtype_background,
		layerelementtype_instance,
		layerelementtype_oldtilemap,
		layerelementtype_sprite,
		layerelementtype_tilemap,
		layerelementtype_particlesystem,
		layerelementtype_tile,
		layerelementtype_sequence,
		tile_rotate,
		tile_flip,
		tile_mirror,
		tile_index_mask,
		kbv_type_default,
		kbv_type_ascii,
		kbv_type_url,
		kbv_type_email,
		kbv_type_numbers,
		kbv_type_phone,
		kbv_type_phone_name,
		kbv_returnkey_default,
		kbv_returnkey_go,
		kbv_returnkey_google,
		kbv_returnkey_join,
		kbv_returnkey_next,
		kbv_returnkey_route,
		kbv_returnkey_search,
		kbv_returnkey_send,
		kbv_returnkey_yahoo,
		kbv_returnkey_done,
		kbv_returnkey_continue,
		kbv_returnkey_emergency,
		kbv_autocapitalize_none,
		kbv_autocapitalize_words,
		kbv_autocapitalize_sentences,
		kbv_autocapitalize_characters,
		os_permission_denied_dont_request,
		os_permission_denied,
		os_permission_granted,
		nineslice_left,
		nineslice_top,
		nineslice_right,
		nineslice_bottom,
		nineslice_centre,
		nineslice_center,
		nineslice_stretch,
		nineslice_repeat,
		nineslice_mirror,
		nineslice_blank,
		nineslice_hide,
		seqtracktype_graphic,
		seqtracktype_audio,
		seqtracktype_real,
		seqtracktype_color,
		seqtracktype_colour,
		seqtracktype_bool,
		seqtracktype_string,
		seqtracktype_sequence,
		seqtracktype_clipmask,
		seqtracktype_clipmask_mask,
		seqtracktype_clipmask_subject,
		seqtracktype_group,
		seqtracktype_empty,
		seqtracktype_spriteframes,
		seqtracktype_instance,
		seqtracktype_message,
		seqtracktype_moment,
		seqplay_oneshot,
		seqplay_loop,
		seqplay_pingpong,
		seqdir_right,
		seqdir_left,
		seqinterpolation_assign,
		seqinterpolation_lerp,
		seqaudiokey_loop,
		seqaudiokey_oneshot,
		animcurvetype_linear,
		animcurvetype_catmullrom
	];
	return l_gmlConstValues;
}

if(live_enabled)
function live_preinit_init_consts(){
	var l_gmlConstNames=undefined;
	var l_gmlConstValues=live_preinit_collect_constants();
	l_gmlConstNames="undefined&pointer_invalid&pointer_null&path_action_stop&path_action_restart&path_action_continue&path_action_reverse&pi&NaN&infinity&GM_build_date&GM_version&GM_runtime_version&timezone_local&timezone_utc&gamespeed_fps&gamespeed_microseconds&ev_create&ev_destroy&ev_step&ev_alarm&ev_keyboard&ev_mouse&ev_collision&ev_other&ev_draw&ev_draw_begin&ev_draw_end&ev_draw_pre&ev_draw_post&ev_keypress&ev_keyrelease&ev_trigger&ev_left_button&ev_right_button&ev_middle_button&ev_no_button&ev_left_press&ev_right_press&ev_middle_press&ev_left_release&ev_right_release&ev_middle_release&ev_mouse_enter&ev_mouse_leave&ev_mouse_wheel_up&ev_mouse_wheel_down&ev_global_left_button&ev_global_right_button&ev_global_middle_button&ev_global_left_press&ev_global_right_press&ev_global_middle_press&ev_global_left_release&ev_global_right_release&ev_global_middle_release&ev_joystick1_left&ev_joystick1_right&ev_joystick1_up&ev_joystick1_down&ev_joystick1_button1&ev_joystick1_button2&ev_joystick1_button3&ev_joystick1_button4&ev_joystick1_button5&ev_joystick1_button6&ev_joystick1_button7&ev_joystick1_button8&ev_joystick2_left&ev_joystick2_right&ev_joystick2_up&ev_joystick2_down&ev_joystick2_button1&ev_joystick2_button2&ev_joystick2_button3&ev_joystick2_button4&ev_joystick2_button5&ev_joystick2_button6&ev_joystick2_button7&ev_joystick2_button8&ev_outside&ev_boundary&ev_game_start&ev_game_end&ev_room_start&ev_room_end&ev_no_more_lives&ev_animation_end&ev_end_of_path&ev_no_more_health&ev_user0&ev_user1&ev_user2&ev_user3&ev_user4&ev_user5&ev_user6&ev_user7&ev_user8&ev_user9&ev_user10&ev_user11&ev_user12&ev_user13&ev_user14&ev_user15&ev_outside_view0&ev_outside_view1&ev_outside_view2&ev_outside_view3&ev_outside_view4&ev_outside_view5&ev_outside_view6&ev_outside_view7&ev_boundary_view0&ev_boundary_view1&ev_boundary_view2&ev_boundary_view3&ev_boundary_view4&ev_boundary_view5&ev_boundary_view6&ev_boundary_view7&ev_animation_update&ev_animation_event&ev_web_image_load&ev_web_sound_load&ev_web_async&ev_dialog_async&ev_web_iap&ev_web_cloud&ev_web_networking&ev_web_steam&ev_social&ev_push_notification&ev_async_save_load&ev_audio_recording&ev_audio_playback&ev_system_event&ev_broadcast_message&ev_step_normal&ev_step_begin&ev_step_end&ev_gui&ev_gui_begin&ev_gui_end&ev_cleanup&ev_gesture&ev_gesture_tap&ev_gesture_double_tap&ev_gesture_drag_start&ev_gesture_dragging&ev_gesture_drag_end&ev_gesture_flick&ev_gesture_pinch_start&ev_gesture_pinch_in&ev_gesture_pinch_out&ev_gesture_pinch_end&ev_gesture_rotate_start&ev_gesture_rotating&ev_gesture_rotate_end&ev_global_gesture_tap&ev_global_gesture_double_tap&ev_global_gesture_drag_start&ev_global_gesture_dragging&ev_global_gesture_drag_end&ev_global_gesture_flick&ev_global_gesture_pinch_start&ev_global_gesture_pinch_in&ev_global_gesture_pinch_out&ev_global_gesture_pinch_end&ev_global_gesture_rotate_start&ev_global_gesture_rotating&ev_global_gesture_rotate_end&ev_async_web_image_load&ev_async_web&ev_async_dialog&ev_async_web_iap&ev_async_web_cloud&ev_async_web_networking&ev_async_web_steam&ev_async_social&ev_async_push_notification&ev_async_save_load&ev_async_audio_recording&ev_async_audio_playback&ev_async_system_event&vk_nokey&vk_anykey&vk_enter&vk_return&vk_shift&vk_control&vk_alt&vk_escape&vk_space&vk_backspace&vk_tab&vk_pause&vk_printscreen&vk_left&vk_right&vk_up&vk_down&vk_home&vk_end&vk_delete&vk_insert&vk_pageup&vk_pagedown&vk_f1&vk_f2&vk_f3&vk_f4&vk_f5&vk_f6&vk_f7&vk_f8&vk_f9&vk_f10&vk_f11&vk_f12&vk_numpad0&vk_numpad1&vk_numpad2&vk_numpad3&vk_numpad4&vk_numpad5&vk_numpad6&vk_numpad7&vk_numpad8&vk_numpad9&vk_divide&vk_multiply&vk_subtract&vk_add&vk_decimal&vk_lshift&vk_lcontrol&vk_lalt&vk_rshift&vk_rcontrol&vk_ralt&mb_any&mb_none&mb_left&mb_right&mb_middle&mb_side1&mb_side2&bboxmode_automatic&bboxmode_fullimage&bboxmode_manual&bboxkind_precise&bboxkind_rectangular&bboxkind_ellipse&bboxkind_diamond&c_aqua&c_black&c_blue&c_dkgray&c_dkgrey&c_fuchsia&c_gray&c_grey&c_green&c_lime&c_ltgray&c_ltgrey&c_maroon&c_navy&c_olive&c_purple&c_red&c_silver&c_teal&c_white&c_yellow&c_orange&fa_left&fa_center&fa_right&fa_top&fa_middle&fa_bottom&pr_pointlist&pr_linelist&pr_linestrip&pr_trianglelist&pr_trianglestrip&pr_trianglefan&bm_normal&bm_add&bm_max&bm_subtract&bm_zero&bm_one&bm_src_colour&bm_inv_src_colour&bm_src_color&bm_inv_src_color&bm_src_alpha&bm_inv_src_alpha&bm_dest_alpha&bm_inv_dest_alpha&bm_dest_colour&bm_inv_dest_colour&bm_dest_color&bm_inv_dest_color&bm_src_alpha_sat&tf_point&tf_linear&tf_anisotropic&mip_off&mip_on&mip_markedonly&audio_falloff_none&audio_falloff_inverse_distance&audio_falloff_inverse_distance_clamped&audio_falloff_linear_distance&audio_falloff_linear_distance_clamped&audio_falloff_exponent_distance&audio_falloff_exponent_distance_clamped&audio_mono&audio_stereo&cr_default&cr_none&cr_arrow&cr_cross&cr_beam&cr_size_nesw&cr_size_ns&cr_size_nwse&cr_size_we&cr_uparrow&cr_hourglass&cr_drag&cr_appstart&cr_handpoint&cr_size_all&spritespeed_framespersecond&spritespeed_framespergameframe&asset_object&asset_unknown&asset_sprite&asset_sound&asset_room&asset_path&asset_script&asset_font&asset_timeline&asset_tiles&asset_shader&asset_sequence&asset_animationcurve&fa_readonly&fa_hidden&fa_sysfile&fa_volumeid&fa_directory&fa_archive&ds_type_map&ds_type_list&ds_type_stack&ds_type_queue&ds_type_grid&ds_type_priority&ef_explosion&ef_ring&ef_ellipse&ef_firework&ef_smoke&ef_smokeup&ef_star&ef_spark&ef_flare&ef_cloud&ef_rain&ef_snow&pt_shape_pixel&pt_shape_disk&pt_shape_square&pt_shape_line&pt_shape_star&pt_shape_circle&pt_shape_ring&pt_shape_sphere&pt_shape_flare&pt_shape_spark&pt_shape_explosion&pt_shape_cloud&pt_shape_smoke&pt_shape_snow&ps_distr_linear&ps_distr_gaussian&ps_distr_invgaussian&ps_shape_rectangle&ps_shape_ellipse&ps_shape_diamond&ps_shape_line&matrix_view&matrix_projection&matrix_world&os_windows&os_macosx&os_ios&os_android&os_linux&os_unknown&os_winphone&os_win8native&os_psvita&os_ps4&os_xboxone&os_ps3&os_uwp&os_tvos&os_switch&os_ps5&os_xboxseriesxs&os_operagx&browser_not_a_browser&browser_unknown&browser_ie&browser_firefox&browser_chrome&browser_safari&browser_safari_mobile&browser_opera&browser_tizen&browser_edge&browser_windows_store&browser_ie_mobile&device_ios_unknown&device_ios_iphone&device_ios_iphone_retina&device_ios_ipad&device_ios_ipad_retina&device_ios_iphone5&device_ios_iphone6&device_ios_iphone6plus&device_emulator&device_tablet&display_landscape&display_landscape_flipped&display_portrait&display_portrait_flipped&tm_sleep&tm_countvsyncs&of_challenge_win&of_challenge_lose&of_challenge_tie&cmpfunc_never&cmpfunc_less&cmpfunc_equal&cmpfunc_lessequal&cmpfunc_greater&cmpfunc_notequal&cmpfunc_greaterequal&cmpfunc_always&cull_noculling&cull_clockwise&cull_counterclockwise&lighttype_dir&lighttype_point&phy_joint_anchor_1_x&phy_joint_anchor_1_y&phy_joint_anchor_2_x&phy_joint_anchor_2_y&phy_joint_reaction_force_x&phy_joint_reaction_force_y&phy_joint_reaction_torque&phy_joint_motor_speed&phy_joint_angle&phy_joint_motor_torque&phy_joint_max_motor_torque&phy_joint_translation&phy_joint_speed&phy_joint_motor_force&phy_joint_max_motor_force&phy_joint_length_1&phy_joint_length_2&phy_joint_damping_ratio&phy_joint_frequency&phy_joint_lower_angle_limit&phy_joint_upper_angle_limit&phy_joint_angle_limits&phy_joint_max_length&phy_joint_max_torque&phy_joint_max_force&phy_debug_render_aabb&phy_debug_render_collision_pairs&phy_debug_render_coms&phy_debug_render_core_shapes&phy_debug_render_joints&phy_debug_render_obb&phy_debug_render_shapes&phy_particle_flag_water&phy_particle_flag_zombie&phy_particle_flag_wall&phy_particle_flag_spring&phy_particle_flag_elastic&phy_particle_flag_viscous&phy_particle_flag_powder&phy_particle_flag_tensile&phy_particle_flag_colourmixing&phy_particle_group_flag_solid&phy_particle_group_flag_rigid&phy_particle_data_flag_typeflags&phy_particle_data_flag_position&phy_particle_data_flag_velocity&phy_particle_data_flag_colour&phy_particle_data_flag_category&network_socket_tcp&network_socket_udp&network_socket_ws&network_socket_bluetooth&network_type_connect&network_type_disconnect&network_type_data&network_type_non_blocking_connect&network_config_connect_timeout&network_config_use_non_blocking_socket&network_config_enable_reliable_udp&network_config_disable_reliable_udp&network_config_avoid_time_wait&buffer_fixed&buffer_grow&buffer_wrap&buffer_fast&buffer_vbuffer&buffer_u8&buffer_s8&buffer_u16&buffer_s16&buffer_u32&buffer_s32&buffer_u64&buffer_f16&buffer_f32&buffer_f64&buffer_bool&buffer_text&buffer_string&buffer_seek_start&buffer_seek_relative&buffer_seek_end&gp_face1&gp_face2&gp_face3&gp_face4&gp_shoulderl&gp_shoulderr&gp_shoulderlb&gp_shoulderrb&gp_select&gp_start&gp_stickl&gp_stickr&gp_padu&gp_padd&gp_padl&gp_padr&gp_axislh&gp_axislv&gp_axisrh&gp_axisrv&gp_axis_acceleration_x&gp_axis_acceleration_y&gp_axis_acceleration_z&gp_axis_angular_velocity_x&gp_axis_angular_velocity_y&gp_axis_angular_velocity_z&gp_axis_orientation_x&gp_axis_orientation_y&gp_axis_orientation_z&gp_axis_orientation_w&vertex_usage_position&vertex_usage_colour&vertex_usage_normal&vertex_usage_texcoord&vertex_usage_blendweight&vertex_usage_blendindices&vertex_usage_psize&vertex_usage_tangent&vertex_usage_binormal&vertex_usage_fog&vertex_usage_depth&vertex_usage_sample&vertex_type_float1&vertex_type_float2&vertex_type_float3&vertex_type_float4&vertex_type_colour&vertex_type_ubyte4&layerelementtype_undefined&layerelementtype_background&layerelementtype_instance&layerelementtype_oldtilemap&layerelementtype_sprite&layerelementtype_tilemap&layerelementtype_particlesystem&layerelementtype_tile&layerelementtype_sequence&tile_rotate&tile_flip&tile_mirror&tile_index_mask&kbv_type_default&kbv_type_ascii&kbv_type_url&kbv_type_email&kbv_type_numbers&kbv_type_phone&kbv_type_phone_name&kbv_returnkey_default&kbv_returnkey_go&kbv_returnkey_google&kbv_returnkey_join&kbv_returnkey_next&kbv_returnkey_route&kbv_returnkey_search&kbv_returnkey_send&kbv_returnkey_yahoo&kbv_returnkey_done&kbv_returnkey_continue&kbv_returnkey_emergency&kbv_autocapitalize_none&kbv_autocapitalize_words&kbv_autocapitalize_sentences&kbv_autocapitalize_characters&os_permission_denied_dont_request&os_permission_denied&os_permission_granted&nineslice_left&nineslice_top&nineslice_right&nineslice_bottom&nineslice_centre&nineslice_center&nineslice_stretch&nineslice_repeat&nineslice_mirror&nineslice_blank&nineslice_hide&seqtracktype_graphic&seqtracktype_audio&seqtracktype_real&seqtracktype_color&seqtracktype_colour&seqtracktype_bool&seqtracktype_string&seqtracktype_sequence&seqtracktype_clipmask&seqtracktype_clipmask_mask&seqtracktype_clipmask_subject&seqtracktype_group&seqtracktype_empty&seqtracktype_spriteframes&seqtracktype_instance&seqtracktype_message&seqtracktype_moment&seqplay_oneshot&seqplay_loop&seqplay_pingpong&seqdir_right&seqdir_left&seqinterpolation_assign&seqinterpolation_lerp&seqaudiokey_loop&seqaudiokey_oneshot&animcurvetype_linear&animcurvetype_catmullrom";
	var l_lines=file_text_open_from_string(l_gmlConstNames);
	var l_index=-1;
	while(!file_text_eof(l_lines)){
		var l_name=file_text_read_string(l_lines);
		file_text_readln(l_lines);
		gml_const_add(l_name,l_gmlConstValues[++l_index]);
	}
	file_text_close(l_lines);
}

if(live_enabled)
function live_preinit_init_new_consts(){
	try{
		gml_const_add("GM_project_filename",GM_project_filename)
	}catch(l__g){
		
	}
	try{
		gml_const_add("GM_build_type",GM_build_type)
	}catch(l__g){
		
	}
	try{
		gml_const_add("GM_is_sandboxed",GM_is_sandboxed)
	}catch(l__g){
		
	}
	try{
		gml_const_add("_GMLINE_",_GMLINE_)
	}catch(l__g){
		
	}
	try{
		gml_const_add("_GMFILE_",_GMFILE_)
	}catch(l__g){
		
	}
	try{
		gml_const_add("_GMFUNCTION_",_GMFUNCTION_)
	}catch(l__g){
		
	}
	try{
		gml_const_add("ev_pre_create",ev_pre_create)
	}catch(l__g){
		
	}
	try{
		gml_const_add("ev_draw_normal",ev_draw_normal)
	}catch(l__g){
		
	}
	try{
		gml_const_add("ev_audio_playback_ended",ev_audio_playback_ended)
	}catch(l__g){
		
	}
	try{
		gml_const_add("ev_async_audio_playback_ended",ev_async_audio_playback_ended)
	}catch(l__g){
		
	}
	try{
		gml_const_add("m_axisx",m_axisx)
	}catch(l__g){
		
	}
	try{
		gml_const_add("m_axisy",m_axisy)
	}catch(l__g){
		
	}
	try{
		gml_const_add("m_axisx_gui",m_axisx_gui)
	}catch(l__g){
		
	}
	try{
		gml_const_add("m_axisy_gui",m_axisy_gui)
	}catch(l__g){
		
	}
	try{
		gml_const_add("m_scroll_up",m_scroll_up)
	}catch(l__g){
		
	}
	try{
		gml_const_add("m_scroll_down",m_scroll_down)
	}catch(l__g){
		
	}
	try{
		gml_const_add("bm_min",bm_min)
	}catch(l__g){
		
	}
	try{
		gml_const_add("bm_reverse_subtract",bm_reverse_subtract)
	}catch(l__g){
		
	}
	try{
		gml_const_add("bm_eq_add",bm_eq_add)
	}catch(l__g){
		
	}
	try{
		gml_const_add("bm_eq_max",bm_eq_max)
	}catch(l__g){
		
	}
	try{
		gml_const_add("bm_eq_subtract",bm_eq_subtract)
	}catch(l__g){
		
	}
	try{
		gml_const_add("bm_eq_min",bm_eq_min)
	}catch(l__g){
		
	}
	try{
		gml_const_add("bm_eq_reverse_subtract",bm_eq_reverse_subtract)
	}catch(l__g){
		
	}
	try{
		gml_const_add("audio_falloff_inverse_distance_scaled",audio_falloff_inverse_distance_scaled)
	}catch(l__g){
		
	}
	try{
		gml_const_add("audio_falloff_exponent_distance_scaled",audio_falloff_exponent_distance_scaled)
	}catch(l__g){
		
	}
	try{
		gml_const_add("audio_3D",audio_3D)
	}catch(l__g){
		
	}
	try{
		gml_const_add("surface_rgba8unorm",surface_rgba8unorm)
	}catch(l__g){
		
	}
	try{
		gml_const_add("surface_r16float",surface_r16float)
	}catch(l__g){
		
	}
	try{
		gml_const_add("surface_r32float",surface_r32float)
	}catch(l__g){
		
	}
	try{
		gml_const_add("surface_rgba4unorm",surface_rgba4unorm)
	}catch(l__g){
		
	}
	try{
		gml_const_add("surface_r8unorm",surface_r8unorm)
	}catch(l__g){
		
	}
	try{
		gml_const_add("surface_rg8unorm",surface_rg8unorm)
	}catch(l__g){
		
	}
	try{
		gml_const_add("surface_rgba16float",surface_rgba16float)
	}catch(l__g){
		
	}
	try{
		gml_const_add("surface_rgba32float",surface_rgba32float)
	}catch(l__g){
		
	}
	try{
		gml_const_add("video_format_rgba",video_format_rgba)
	}catch(l__g){
		
	}
	try{
		gml_const_add("video_format_yuv",video_format_yuv)
	}catch(l__g){
		
	}
	try{
		gml_const_add("video_status_closed",video_status_closed)
	}catch(l__g){
		
	}
	try{
		gml_const_add("video_status_preparing",video_status_preparing)
	}catch(l__g){
		
	}
	try{
		gml_const_add("video_status_playing",video_status_playing)
	}catch(l__g){
		
	}
	try{
		gml_const_add("video_status_paused",video_status_paused)
	}catch(l__g){
		
	}
	try{
		gml_const_add("sprite_add_ext_error_unknown",sprite_add_ext_error_unknown)
	}catch(l__g){
		
	}
	try{
		gml_const_add("sprite_add_ext_error_cancelled",sprite_add_ext_error_cancelled)
	}catch(l__g){
		
	}
	try{
		gml_const_add("sprite_add_ext_error_spritenotfound",sprite_add_ext_error_spritenotfound)
	}catch(l__g){
		
	}
	try{
		gml_const_add("sprite_add_ext_error_loadfailed",sprite_add_ext_error_loadfailed)
	}catch(l__g){
		
	}
	try{
		gml_const_add("sprite_add_ext_error_decompressfailed",sprite_add_ext_error_decompressfailed)
	}catch(l__g){
		
	}
	try{
		gml_const_add("sprite_add_ext_error_setupfailed",sprite_add_ext_error_setupfailed)
	}catch(l__g){
		
	}
	try{
		gml_const_add("fa_none",fa_none)
	}catch(l__g){
		
	}
	try{
		gml_const_add("ps_mode_stream",ps_mode_stream)
	}catch(l__g){
		
	}
	try{
		gml_const_add("ps_mode_burst",ps_mode_burst)
	}catch(l__g){
		
	}
	try{
		gml_const_add("os_gdk",os_gdk)
	}catch(l__g){
		
	}
	try{
		gml_const_add("os_gxgames",os_gxgames)
	}catch(l__g){
		
	}
	try{
		gml_const_add("tm_systemtiming",tm_systemtiming)
	}catch(l__g){
		
	}
	try{
		gml_const_add("network_socket_wss",network_socket_wss)
	}catch(l__g){
		
	}
	try{
		gml_const_add("network_type_up",network_type_up)
	}catch(l__g){
		
	}
	try{
		gml_const_add("network_type_up_failed",network_type_up_failed)
	}catch(l__g){
		
	}
	try{
		gml_const_add("network_type_down",network_type_down)
	}catch(l__g){
		
	}
	try{
		gml_const_add("network_send_binary",network_send_binary)
	}catch(l__g){
		
	}
	try{
		gml_const_add("network_send_text",network_send_text)
	}catch(l__g){
		
	}
	try{
		gml_const_add("network_config_websocket_protocol",network_config_websocket_protocol)
	}catch(l__g){
		
	}
	try{
		gml_const_add("network_config_enable_multicast",network_config_enable_multicast)
	}catch(l__g){
		
	}
	try{
		gml_const_add("network_config_disable_multicast",network_config_disable_multicast)
	}catch(l__g){
		
	}
	try{
		gml_const_add("network_connect_none",network_connect_none)
	}catch(l__g){
		
	}
	try{
		gml_const_add("network_connect_blocking",network_connect_blocking)
	}catch(l__g){
		
	}
	try{
		gml_const_add("network_connect_nonblocking",network_connect_nonblocking)
	}catch(l__g){
		
	}
	try{
		gml_const_add("network_connect_active",network_connect_active)
	}catch(l__g){
		
	}
	try{
		gml_const_add("network_connect_passive",network_connect_passive)
	}catch(l__g){
		
	}
	try{
		gml_const_add("gp_home",gp_home)
	}catch(l__g){
		
	}
	try{
		gml_const_add("gp_extra1",gp_extra1)
	}catch(l__g){
		
	}
	try{
		gml_const_add("gp_extra2",gp_extra2)
	}catch(l__g){
		
	}
	try{
		gml_const_add("gp_extra3",gp_extra3)
	}catch(l__g){
		
	}
	try{
		gml_const_add("gp_extra4",gp_extra4)
	}catch(l__g){
		
	}
	try{
		gml_const_add("gp_paddler",gp_paddler)
	}catch(l__g){
		
	}
	try{
		gml_const_add("gp_paddlel",gp_paddlel)
	}catch(l__g){
		
	}
	try{
		gml_const_add("gp_paddlerb",gp_paddlerb)
	}catch(l__g){
		
	}
	try{
		gml_const_add("gp_paddlelb",gp_paddlelb)
	}catch(l__g){
		
	}
	try{
		gml_const_add("gp_touchpadbutton",gp_touchpadbutton)
	}catch(l__g){
		
	}
	try{
		gml_const_add("gp_extra5",gp_extra5)
	}catch(l__g){
		
	}
	try{
		gml_const_add("gp_extra6",gp_extra6)
	}catch(l__g){
		
	}
	try{
		gml_const_add("texturegroup_status_unloaded",texturegroup_status_unloaded)
	}catch(l__g){
		
	}
	try{
		gml_const_add("texturegroup_status_loading",texturegroup_status_loading)
	}catch(l__g){
		
	}
	try{
		gml_const_add("texturegroup_status_loaded",texturegroup_status_loaded)
	}catch(l__g){
		
	}
	try{
		gml_const_add("texturegroup_status_fetched",texturegroup_status_fetched)
	}catch(l__g){
		
	}
	try{
		gml_const_add("seqtracktype_text",seqtracktype_text)
	}catch(l__g){
		
	}
	try{
		gml_const_add("seqtracktype_particlesystem",seqtracktype_particlesystem)
	}catch(l__g){
		
	}
	try{
		gml_const_add("seqtracktype_audioeffect",seqtracktype_audioeffect)
	}catch(l__g){
		
	}
	try{
		gml_const_add("seqtextkey_left",seqtextkey_left)
	}catch(l__g){
		
	}
	try{
		gml_const_add("seqtextkey_center",seqtextkey_center)
	}catch(l__g){
		
	}
	try{
		gml_const_add("seqtextkey_right",seqtextkey_right)
	}catch(l__g){
		
	}
	try{
		gml_const_add("seqtextkey_justify",seqtextkey_justify)
	}catch(l__g){
		
	}
	try{
		gml_const_add("seqtextkey_top",seqtextkey_top)
	}catch(l__g){
		
	}
	try{
		gml_const_add("seqtextkey_middle",seqtextkey_middle)
	}catch(l__g){
		
	}
	try{
		gml_const_add("seqtextkey_bottom",seqtextkey_bottom)
	}catch(l__g){
		
	}
	try{
		gml_const_add("animcurvetype_bezier",animcurvetype_bezier)
	}catch(l__g){
		
	}
	try{
		gml_const_add("time_source_global",time_source_global)
	}catch(l__g){
		
	}
	try{
		gml_const_add("time_source_game",time_source_game)
	}catch(l__g){
		
	}
	try{
		gml_const_add("time_source_units_seconds",time_source_units_seconds)
	}catch(l__g){
		
	}
	try{
		gml_const_add("time_source_units_frames",time_source_units_frames)
	}catch(l__g){
		
	}
	try{
		gml_const_add("time_source_expire_nearest",time_source_expire_nearest)
	}catch(l__g){
		
	}
	try{
		gml_const_add("time_source_expire_after",time_source_expire_after)
	}catch(l__g){
		
	}
	try{
		gml_const_add("time_source_state_initial",time_source_state_initial)
	}catch(l__g){
		
	}
	try{
		gml_const_add("time_source_state_active",time_source_state_active)
	}catch(l__g){
		
	}
	try{
		gml_const_add("time_source_state_paused",time_source_state_paused)
	}catch(l__g){
		
	}
	try{
		gml_const_add("time_source_state_stopped",time_source_state_stopped)
	}catch(l__g){
		
	}
	try{
		gml_const_add("audio_bus_main",audio_bus_main)
	}catch(l__g){
		
	}
	try{
		gml_const_add("AudioEffectType",AudioEffectType)
	}catch(l__g){
		
	}
	try{
		gml_const_add("AudioLFOType",AudioLFOType)
	}catch(l__g){
		
	}
}

if(live_enabled)
function live_preinit_init_arrays(){
	gml_var_add("instance_count*",function(l_set,l_val){
		return instance_count
	});
	gml_var_add("room_speed",function(l_set,l_val){
		if(l_set){
			room_speed=l_val;
			return undefined;
		} else return room_speed
	});
	gml_var_add("fps*",function(l_set,l_val){
		return fps
	});
	gml_var_add("fps_real*",function(l_set,l_val){
		return fps_real
	});
	gml_var_add("current_time*",function(l_set,l_val){
		return current_time
	});
	gml_var_add("current_year*",function(l_set,l_val){
		return current_year
	});
	gml_var_add("current_month*",function(l_set,l_val){
		return current_month
	});
	gml_var_add("current_day*",function(l_set,l_val){
		return current_day
	});
	gml_var_add("current_weekday*",function(l_set,l_val){
		return current_weekday
	});
	gml_var_add("current_hour*",function(l_set,l_val){
		return current_hour
	});
	gml_var_add("current_minute*",function(l_set,l_val){
		return current_minute
	});
	gml_var_add("current_second*",function(l_set,l_val){
		return current_second
	});
	gml_var_add("room",function(l_set,l_val){
		if(l_set){
			room=l_val;
			return undefined;
		} else return room
	});
	gml_var_add("room_first*",function(l_set,l_val){
		return room_first
	});
	gml_var_add("room_last*",function(l_set,l_val){
		return room_last
	});
	gml_var_add("room_width*",function(l_set,l_val){
		return room_width
	});
	gml_var_add("room_height*",function(l_set,l_val){
		return room_height
	});
	gml_var_add("room_persistent",function(l_set,l_val){
		if(l_set){
			room_persistent=l_val;
			return undefined;
		} else return room_persistent
	});
	gml_var_add("score",function(l_set,l_val){
		if(l_set){
			score=l_val;
			return undefined;
		} else return score
	});
	gml_var_add("lives",function(l_set,l_val){
		if(l_set){
			lives=l_val;
			return undefined;
		} else return lives
	});
	gml_var_add("health",function(l_set,l_val){
		if(l_set){
			health=l_val;
			return undefined;
		} else return health
	});
	gml_var_add("event_type*",function(l_set,l_val){
		return event_type
	});
	gml_var_add("event_number*",function(l_set,l_val){
		return event_number
	});
	gml_var_add("event_object*",function(l_set,l_val){
		return event_object
	});
	gml_var_add("event_action*",function(l_set,l_val){
		return event_action
	});
	gml_var_add("application_surface*",function(l_set,l_val){
		return application_surface
	});
	gml_var_add("debug_mode*",function(l_set,l_val){
		return debug_mode
	});
	gml_var_add("font_texture_page_size",function(l_set,l_val){
		if(l_set){
			font_texture_page_size=l_val;
			return undefined;
		} else return font_texture_page_size
	});
	gml_var_add("keyboard_key",function(l_set,l_val){
		if(l_set){
			keyboard_key=l_val;
			return undefined;
		} else return keyboard_key
	});
	gml_var_add("keyboard_lastkey",function(l_set,l_val){
		if(l_set){
			keyboard_lastkey=l_val;
			return undefined;
		} else return keyboard_lastkey
	});
	gml_var_add("keyboard_lastchar",function(l_set,l_val){
		if(l_set){
			keyboard_lastchar=l_val;
			return undefined;
		} else return keyboard_lastchar
	});
	gml_var_add("keyboard_string",function(l_set,l_val){
		if(l_set){
			keyboard_string=l_val;
			return undefined;
		} else return keyboard_string
	});
	gml_var_add("mouse_x*",function(l_set,l_val){
		return mouse_x
	});
	gml_var_add("mouse_y*",function(l_set,l_val){
		return mouse_y
	});
	gml_var_add("mouse_button",function(l_set,l_val){
		if(l_set){
			mouse_button=l_val;
			return undefined;
		} else return mouse_button
	});
	gml_var_add("mouse_lastbutton",function(l_set,l_val){
		if(l_set){
			mouse_lastbutton=l_val;
			return undefined;
		} else return mouse_lastbutton
	});
	gml_var_add("cursor_sprite",function(l_set,l_val){
		if(l_set){
			cursor_sprite=l_val;
			return undefined;
		} else return cursor_sprite
	});
	gml_var_add("background_colour£",function(l_set,l_val){
		if(l_set){
			background_colour=l_val;
			return undefined;
		} else return background_colour
	});
	gml_var_add("background_showcolour£",function(l_set,l_val){
		if(l_set){
			background_showcolour=l_val;
			return undefined;
		} else return background_showcolour
	});
	gml_var_add("background_color$",function(l_set,l_val){
		if(l_set){
			background_color=l_val;
			return undefined;
		} else return background_color
	});
	gml_var_add("background_showcolor$",function(l_set,l_val){
		if(l_set){
			background_showcolor=l_val;
			return undefined;
		} else return background_showcolor
	});
	gml_var_add("view_enabled",function(l_set,l_val){
		if(l_set){
			view_enabled=l_val;
			return undefined;
		} else return view_enabled
	});
	gml_var_add("view_current*",function(l_set,l_val){
		return view_current
	});
	gml_var_add("view_visible[]",function(l_set,l_val,l_ind){
		if(l_ind<0||l_ind>7)return gml_thread_error("Index ("+string(l_ind)+") is out of range [0..7]");
		if(l_set){
			view_visible[l_ind] = l_val;
			return undefined;
		} else return view_visible[l_ind];
	});
	gml_var_add("view_xport[]",function(l_set,l_val,l_ind){
		if(l_ind<0||l_ind>7)return gml_thread_error("Index ("+string(l_ind)+") is out of range [0..7]");
		if(l_set){
			view_xport[l_ind] = l_val;
			return undefined;
		} else return view_xport[l_ind];
	});
	gml_var_add("view_yport[]",function(l_set,l_val,l_ind){
		if(l_ind<0||l_ind>7)return gml_thread_error("Index ("+string(l_ind)+") is out of range [0..7]");
		if(l_set){
			view_yport[l_ind] = l_val;
			return undefined;
		} else return view_yport[l_ind];
	});
	gml_var_add("view_wport[]",function(l_set,l_val,l_ind){
		if(l_ind<0||l_ind>7)return gml_thread_error("Index ("+string(l_ind)+") is out of range [0..7]");
		if(l_set){
			view_wport[l_ind] = l_val;
			return undefined;
		} else return view_wport[l_ind];
	});
	gml_var_add("view_hport[]",function(l_set,l_val,l_ind){
		if(l_ind<0||l_ind>7)return gml_thread_error("Index ("+string(l_ind)+") is out of range [0..7]");
		if(l_set){
			view_hport[l_ind] = l_val;
			return undefined;
		} else return view_hport[l_ind];
	});
	gml_var_add("view_surface_id[]",function(l_set,l_val,l_ind){
		if(l_ind<0||l_ind>7)return gml_thread_error("Index ("+string(l_ind)+") is out of range [0..7]");
		if(l_set){
			view_surface_id[l_ind] = l_val;
			return undefined;
		} else return view_surface_id[l_ind];
	});
	gml_var_add("view_camera[]",function(l_set,l_val,l_ind){
		if(l_ind<0||l_ind>7)return gml_thread_error("Index ("+string(l_ind)+") is out of range [0..7]");
		if(l_set){
			view_camera[l_ind] = l_val;
			return undefined;
		} else return view_camera[l_ind];
	});
	gml_var_add("game_id*",function(l_set,l_val){
		return game_id
	});
	gml_var_add("game_display_name*",function(l_set,l_val){
		return game_display_name
	});
	gml_var_add("game_project_name*",function(l_set,l_val){
		return game_project_name
	});
	gml_var_add("game_save_id*",function(l_set,l_val){
		return game_save_id
	});
	gml_var_add("working_directory*",function(l_set,l_val){
		return working_directory
	});
	gml_var_add("temp_directory*",function(l_set,l_val){
		return temp_directory
	});
	gml_var_add("cache_directory*",function(l_set,l_val){
		return cache_directory
	});
	gml_var_add("program_directory*",function(l_set,l_val){
		return program_directory
	});
	gml_var_add("browser_width*",function(l_set,l_val){
		return browser_width
	});
	gml_var_add("browser_height*",function(l_set,l_val){
		return browser_height
	});
	gml_var_add("os_type*",function(l_set,l_val){
		return os_type
	});
	gml_var_add("os_device*",function(l_set,l_val){
		return os_device
	});
	gml_var_add("os_browser*",function(l_set,l_val){
		return os_browser
	});
	gml_var_add("os_version*",function(l_set,l_val){
		return os_version
	});
	gml_var_add("display_aa*",function(l_set,l_val){
		return display_aa
	});
	gml_var_add("async_load*",function(l_set,l_val){
		return async_load
	});
	gml_var_add("delta_time*",function(l_set,l_val){
		return delta_time
	});
	gml_var_add("webgl_enabled*",function(l_set,l_val){
		return webgl_enabled
	});
	gml_var_add("event_data*",function(l_set,l_val){
		return event_data
	});
}

function live_preinit_api(){
	if(live_enabled){
		live_preinit_init_funcs();
		live_preinit_init_consts();
		live_preinit_init_new_consts();
		live_preinit_init_arrays();
	}
}


