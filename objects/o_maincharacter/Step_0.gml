rightKey = keyboard_check(ord("D"))
leftKey = keyboard_check(ord("A"))
upKey = keyboard_check(ord("W"))
downKey = keyboard_check(ord("S"))

xSpeed = (rightKey - leftKey) * moveSpeed
ySpeed = (downKey - upKey) * moveSpeed

x=clamp(x, 0, room_width - 64);
y=clamp(y, 32, room_height - 64);

if place_meeting(x + xSpeed, y, o_szatnia){
	xSpeed = 0
}

if place_meeting(x, y + ySpeed, o_szatnia){
	ySpeed = 0
}

x += xSpeed
y += ySpeed

#region player movement

if ySpeed < 0{
	face = UP
	lastDirection = 1
}

if xSpeed < 0{
	face = LEFT
	lastDirection = 2
}

if xSpeed > 0{
	face = RIGHT
	lastDirection = 0
}

if ySpeed > 0{
	face = DOWN
	lastDirection = 3
}

if xSpeed == 0 and ySpeed == 0{
	switch(lastDirection){
		case 0:
			face = STOP_RIGHT
			break
		case 1:
			face = STOP_UP
			break
		case 2:
			face = STOP_LEFT
			break
		case 3:
			face = STOP_DOWN
			break	
	}
}

#endregion

sprite_index = sprite[face]