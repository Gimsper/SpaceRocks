menu_height = menu_padding * 2 + font_get_size(fnt_menu) + (options_length - 1) * menu_text_space

draw_sprite_ext(sprite_index, image_index, x, y, menu_width/sprite_width, menu_height/sprite_height, 0, c_white, .75)

draw_set_font(fnt_menu_options)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

for (var i = 0; i < options_length; i++) {
	var _c = c_white
	if (menu_pos == i) {
		_c = c_yellow
	}
	draw_text_color(x + menu_padding, y + menu_padding + (menu_text_space * i), options[menu_level, i], _c, _c, _c, _c, 1)
}