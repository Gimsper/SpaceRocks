var move = (keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up))
		+ (keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W")))
var accept = keyboard_check_pressed(vk_enter)
var gpMove = 0
var gpAccept = 0

var gp = global.mainGamepad
if (gp != undefined) {
	gpMove = gamepad_button_check_pressed(gp, gp_padd) - gamepad_button_check_pressed(gp, gp_padu)
	gpAccept = gamepad_button_check_pressed(gp, gp_face1)
}

options_length = array_length(options[menu_level])

menu_pos += move + gpMove

if (menu_pos < 0) {
	menu_pos = options_length - 1
}
if (menu_pos = options_length) {
	menu_pos = 0
}

if (gpAccept || accept) {
	var _sml = menu_level
	
	switch (menu_level) {
		case menus.Main:
			switch (menu_pos) {
				case main_options.Start:
					room_goto_next()
					break
				case main_options.Settings:
					menu_level = menus.Settings
					break
				case main_options.Quit:
					game_end()
					break
			}
			break
		case menus.Settings:
			switch(menu_pos) {
				case settings_options.Controls:
					break
				case settings_options.WindowSize:
					break
				case settings_options.Brightness:
					break
				case settings_options.SoundLevel:
					break
				case settings_options.Back:
					menu_level = menus.Main
					break
			}
			break
	}
		
	if (_sml != menu_level) {
		menu_pos = 0	
		options_length = array_length(options[menu_level])
	}
}