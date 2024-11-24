rightKey = keyboard_check(ord("D"))
leftKey = keyboard_check(ord("A"))
upKey = keyboard_check(ord("W"))
downKey = keyboard_check(ord("S"))

xSpeed = (rightKey - leftKey) * moveSpeed
ySpeed = (downKey - upKey) * moveSpeed

x=clamp(x, 0, room_width - 48);
y=clamp(y, 32, room_height - 64);

#region collisions

if place_meeting(x + xSpeed, y, o_szatnia){
	xSpeed = 0
}

if place_meeting(x, y + ySpeed, o_szatnia){
	ySpeed = 0
}

#endregion

#region player movement

if room != BattleRoom{
	x += xSpeed
	y += ySpeed

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
}

#endregion

#region pressF

if abs(x - o_pressF.x) < 30 and abs(y - o_pressF.y) < 30{
	o_pressF.visible = true
}else{
	o_pressF.visible = false
}

#endregion

#region pressE
if room == changingRoom{
	distance = 70
	
	if abs(x - eWrs.x) < distance and abs(y - eWrs.y) < distance{
		eWrs.visible = true
		eWrs.wrs = 1
	}else{
		eWrs.visible = false
		eWrs.wrs = 0
	}

	if abs(x - eChad.x) < distance and abs(y - eChad.y) < distance{
		eChad.visible = true
		eChad.chad = 1
	}else{
		eChad.visible = false
		eChad.chad = 0
	}

	if abs(x - eLibrary.x) < distance and abs(y - eLibrary.y) < distance{
		eLibrary.visible = true
		eLibrary.library1 = 1
	}else{
		eLibrary.visible = false
		eLibrary.library1 = 0
	}
}
#endregion

sprite_index = sprite[face]