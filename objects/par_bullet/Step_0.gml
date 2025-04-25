if (instance_exists(obj_soul))
{
	var do_invicible = obj_soul.invincible
	if (!do_invicible)
	{
		if (place_meeting(x,y, obj_soul))
		{
			if (destroyself) {instance_destroy()}
			audio_play_sound(snd_hurt1, 1, false);
			do_damage(damage);
			obj_soul.invincible = true;
		}
	}
}