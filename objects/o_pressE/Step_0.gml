eKey = keyboard_check(ord("E"))

elokwencja = clamp(elokwencja, 0, 4)
riposta = clamp(riposta, 0, 4)
rizz = clamp(rizz, 0, 4)

if visible and eKey{
	if wrs and canChange{
		rizz++;
		o_rizz.image_index = rizz
		canChange = false
	}
}else{
	canChange = true
}

if visible and eKey{
	if chad and canChange{
		riposta++;
		o_riposta.image_index = riposta
		canChange = false
	}
}else{
	canChange = true
}

if visible and eKey{
	if library1 and canChange{
		elokwencja++;
		o_elokwencja.image_index = elokwencja
		canChange = false
	}
}else{
	canChange = true
}