rightKey = keyboard_check(ord("D"))
leftKey = keyboard_check(ord("A"))
upKey = keyboard_check(ord("W"))
downKey = keyboard_check(ord("S"))

xSpeed = (rightKey - leftKey) * moveSpeed
ySpeed = (downKey - upKey) * moveSpeed

x += xSpeed
y += ySpeed

if ySpeed != 0{
	if ySpeed > 0{ 
		face = DOWN
		goUP = 0
	}
	if ySpeed < 0{
		face = UP
		goUP = 1
	}
}else{
	if goUP == 0{
		face = STOP
	}
	else{
		face = STOP_BACK
	}
}



sprite_index = sprite[face]