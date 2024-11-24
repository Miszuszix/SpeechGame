fKey = keyboard_check(ord("F"))

if visible and fKey{
	instance_deactivate_all(true)
	room_goto(BattleRoom)
}