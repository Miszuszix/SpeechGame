draw_self()
if win{
	draw_set_color(c_black)
	draw_text(sx, yText, "Gratulacje!")
}else if phrases[current] == keyboard_string{
	keyboard_string = ""
	if current + 1 == global.riposta{
		win = true
	}
	current++
}else{
	draw_set_font(textFont)
	draw_set_color(c_black)
	draw_text(sx, yText, phrases[current])
	draw_set_color(red)
	draw_text(sx, input, keyboard_string)
}