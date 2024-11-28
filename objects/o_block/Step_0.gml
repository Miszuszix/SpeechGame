global.order = []
for (var i = 0; i < instance_number(o_block); i++){
	id.depth = global.blocks_depth[array_get_index(global.array_blocks, id)]
}

if !mouse_check_button(mb_left){
	dragged = false
}

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