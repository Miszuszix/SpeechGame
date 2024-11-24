draw_self()
key4 = keyboard_check(ord(4))
if !lost{
	if win{
		draw_set_color(c_black)
		draw_text(sx, yText, "Gratulacje!")
		draw_text(sx, input, "4 - WYJDŹ")
		instance_destroy(o_clock)
		alarm[0] = -1
		if key4{
			room_goto(changingRoom)
		}
	}else if phrases[current] == keyboard_string{
		keyboard_string = ""
		if current + 1 == global.elokwencja{
			win = true
		}
		current++
	}else{
		draw_set_font(textFont)
		draw_set_color(c_black)
		draw_text(sx, yText, phrases[current])
		draw_set_color(green)
		draw_text(sx, input, keyboard_string)
	}
}else{
	draw_set_color(c_black)
	draw_text(sx, yText, "Przegrałeś :c")
	instance_destroy(o_clock)
	draw_text(sx, input, "4 - WYJDŹ")
	if key4{
		room_goto(changingRoom)
	}
}