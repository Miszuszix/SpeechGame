draw_self()
enter = keyboard_check(vk_enter)
draw_set_font(textFont_1)
draw_set_color(c_black)
draw_text_ext(sx, yText, "Podrasuj swoje umiejętności perswazji wchodząc w interakcję z ludźmi lub przedmiotami, ale bądź ostrożny, z wielką mocą wiąże się wielka odpowiedzialność", 20, 374)
if enter{
	instance_destroy(self)
}
draw_text(420, 185, "ENTER")