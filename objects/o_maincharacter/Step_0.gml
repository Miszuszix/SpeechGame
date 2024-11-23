rightKey = keyboard_check(ord("D"))
leftKey = keyboard_check(ord("A"))
upKey = keyboard_check(ord("W"))
downKey = keyboard_check(ord("S"))

xSpeed = (rightKey - leftKey) * moveSpeed
ySpeed = (downKey - upKey) * moveSpeed

x += xSpeed
y += ySpeed