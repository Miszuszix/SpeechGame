draw_self();
draw_set_font(textFont)
key4 = keyboard_check(ord(4))

if !select{
	draw_set_color(c_black)
	draw_text_ext(fx, fy, messages[page], 20, 374)
	if keyboard_check(vk_enter)
	{
		if canChange{
			page++
			canChange = false
		}
		if page % 3 == 1{
			select = true
		}
	}
}else{
	sprite_index = textBubble
	draw_set_color(green)
	draw_text_ext(sx, y1, options[0], 20, 374)
	draw_set_color(red)
	draw_text_ext(sx, y2, options[1], 20, 374)
	draw_set_color(blue)
	draw_text_ext(sx, y3, options[2], 20, 374)
	draw_set_color(c_black)
	draw_text_ext(sx, y4, options[3], 20, 374)
	if key4{
		room_goto(changingRoom)
	}
}