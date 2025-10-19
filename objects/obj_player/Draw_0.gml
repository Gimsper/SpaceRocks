draw_self()

if (alarm[0] > 0)
{
	draw_set_halign(fa_center)
	var time = round(alarm[0] / 60)
	draw_text(x, y - 60, time)
	draw_set_halign(fa_left)
}

if (powerUp == 1)
{
	draw_circle(x, y, 64, true)
}