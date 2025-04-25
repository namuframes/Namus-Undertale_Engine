function scr_inputs()
{
	left_key = keyboard_check(vk_left) or keyboard_check(ord("A"));
	right_key = keyboard_check(vk_right) or keyboard_check(ord("D"));
	up_key = keyboard_check(vk_up) or keyboard_check(ord("W"));
	down_key = keyboard_check(vk_down) or keyboard_check(ord("S"));
	
	left_key_p = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"));
	right_key_p = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"));
	up_key_p = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
	down_key_p = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
	
	accept_key = keyboard_check(ord("Z")) or keyboard_check(vk_enter);
	accept_key_p = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter);
	accept_key_r = keyboard_check_released(ord("Z")) or keyboard_check_released(vk_enter);
	
	cancel_key = keyboard_check(ord("X")) or keyboard_check(vk_shift);
	cancel_key_p = keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift);
	cancel_key_r = keyboard_check_released(ord("X")) or keyboard_check_released(vk_shift);
	
	menu_key = keyboard_check_pressed(ord("C")) or keyboard_check_pressed(vk_control);
	menu_key_r = keyboard_check_released(ord("C")) or keyboard_check_released(vk_control);
};