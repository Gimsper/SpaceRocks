function scr_check_gamepads() {
	var gamepad = async_load[? "pad_index"]

	switch (async_load[? "event_type"])
	{
		case "gamepad discovered":
			array_push(global.gamepads, gamepad)
			break;
		case "gamepad lost":
			var index = array_get_index(global.gamepads, gamepad)
			if (index >= 0)
			{
				array_delete(global.gamepads, gamepad, 1)
			}
			break;
	}

	if (array_length(global.gamepads) > 0)
	{
		global.mainGamepad = global.gamepads[0]
	}
	else
	{
		global.mainGamepad = undefined
	}
}