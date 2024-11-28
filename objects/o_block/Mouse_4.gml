dragged = true
if hovers{
	currentBlock.occupied = false
}
xx = x - mouse_x
yy = y - mouse_y
image_xscale = 0.9
image_yscale = 0.9
for (var i = array_get_index(global.array_blocks, id); i > 0; i--){
	var temp = id
	global.array_blocks[i] = global.array_blocks[i - 1]
	global.array_blocks[i - 1] = temp
}