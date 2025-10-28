enum menus {
	Main,
	Settings
}

enum main_options {
	Start,
	Settings,
	Quit
}

enum settings_options {
	Controls,
	WindowSize,
	Brightness,
	SoundLevel,
	Back
}

menu_width = 16 * 32
menu_height = 8 * 32
menu_pos = 0
menu_padding = 32
menu_text_space = 64

options[menus.Main, main_options.Start] = "Start"
options[menus.Main, main_options.Settings] = "Settings"
options[menus.Main, main_options.Quit] = "Quit"

options[menus.Settings, settings_options.Controls] = "Controls"
options[menus.Settings, settings_options.WindowSize] = "Window size"
options[menus.Settings, settings_options.Brightness] = "Brightness"
options[menus.Settings, settings_options.SoundLevel] = "Sound level"
options[menus.Settings, settings_options.Back] = "Back"

options_length = 0
menu_level = menus.Main