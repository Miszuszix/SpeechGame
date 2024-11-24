eKey = keyboard_check(ord("E"))

global.elokwencja = clamp(global.elokwencja, 0, 4)
global.riposta = clamp(global.riposta, 0, 4)
global.rizz = clamp(global.rizz, 0, 4)

if visible and eKey{
	if wrs and canChange{
		global.rizz++;
		o_rizz.image_index = global.rizz
		canChange = false
	}
}else{
	canChange = true
}

if visible and eKey{
	if chad and canChange{
		global.riposta++;
		o_riposta.image_index = global.riposta
		canChange = false
	}
}else{
	canChange = true
}

if visible and eKey{
	if library1 and canChange{
		global.elokwencja++;
		o_elokwencja.image_index = global.elokwencja
		canChange = false
	}
}else{
	canChange = true
}