dragged = false
if hovers{
	if !currentBlock.occupied{
		self.x = currentBlock.x
		self.y = currentBlock.y
		image_xscale = 1.25
		image_yscale = 1.4
		currentBlock.occupied = true
		occupied = true
	}
}else{
	currentBlock.occupied = false
	occupied = false
}