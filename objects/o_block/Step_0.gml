if !dragged{
	exit
}else{
	x = mouse_x + xx
	y = mouse_y + yy
	for (var i = 0; i < 3; i++){
		block = placeholders[i]
		if abs(block.x - mouse_x) < block.sprite_width / 2 and abs(block.y - mouse_y) < block.sprite_height / 2{
			block.sprite_index = textBubbleGrayHover
			hovers = true
			currentBlock = placeholders[i]
			exit
		}else{
			block.sprite_index = textBubbleGray
			hovers = false
		}
	}
}