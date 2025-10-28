var move = keyboard_check(ord("W"));
var hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var fire = keyboard_check_pressed(vk_space);

var gp = global.mainGamepad
if (gp != undefined)
{
	move = gamepad_button_value(gp, gp_shoulderrb)
	hor = gamepad_axis_value(gp, gp_axislh)
	fire = gamepad_button_check_pressed(gp, gp_face1)
}

if (move)
{
	motion_add(image_angle, .1 * move)
}
else
{
	speed = speed > 0 ? speed - .2	 : 0;
}

if (hor != 0)
{
	image_angle += -5 * hor
}

if (fire)
{
	instance_create_layer(x, y, "Instances", obj_bullet)
	audio_play_sound(snd_shoot, 1, false, 2, 0, random_range(.8, 1.2))
	
	if (powerUp == 2)
	{
		var bullet = instance_create_layer(x, y, "Instances", obj_bullet)
		bullet.direction += 10
		bullet = instance_create_layer(x, y, "Instances", obj_bullet)
		bullet.direction -= 10
	}
}

move_wrap(true, true, 0)