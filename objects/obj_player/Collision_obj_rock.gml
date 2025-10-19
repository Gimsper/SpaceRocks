if (powerUp != 1)
{
	effect_create_above(ef_firework, x, y, 1, c_yellow);
	instance_destroy();

	obj_game.alarm[0] = 120;

	audio_play_sound(snd_lose, 1, false, 4)
}