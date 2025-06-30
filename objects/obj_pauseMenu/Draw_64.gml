if (live_call()) {return live_result}

draw_set_alpha(blackInfo[0]) //BLACK RECTANGLE TO MAKE THE PAUSE MENU BEAUTIFULL OORRR WHATEVER LMAO
draw_rectangle_color(0, 0, 900, 900, c_black, c_black, c_black, c_black, false)
draw_set_alpha(1)

//draw_text(10,10, string(inputCooldown)+"&"+string(global.interact_cooldown))

if (global.inPause)
{	
	if (blackInfo[0] < 0.5) {blackInfo[0] += 0.05;}
	var boxPos = [20, 130]
	draw_box(boxPos[0], boxPos[1], boxPos[0]+180, 55*array_length(configop));	
	
	for (var i = 0; i < array_length(configop); i++) {
		var myPos = [boxPos[0]+25, boxPos[1]+20+(40*i)]
		var _color = configSel == i ? c_red : TEXTconfig.color
		draw_special_text(myPos[0], myPos[1], undefined, undefined, fnt_main, configop[i], 2, 2, 0, _color)
	}
	
} else {
	if (blackInfo[0] > 0) {blackInfo[0] -= 0.05;}
}