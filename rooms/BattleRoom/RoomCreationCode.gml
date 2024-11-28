o_pressF.visible = false
o_coatlady.sprite_index = coatlady_moving
o_maincharacter.sprite_index = maincharacter_standing_bossfight
global.array_blocks = []
global.blocks_depth = []
global.order = []
global.values = []
for (var i = 0; i < instance_number(o_block); i++;)
{
    global.array_blocks[i] = instance_find(o_block,i);
	global.blocks_depth[i] = -instance_number(o_block) + i
	global.array_blocks[i].depth = global.blocks_depth[i]
}