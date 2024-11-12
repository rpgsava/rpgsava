tp ^ ^ ^1

function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/particle/tmesis/tmesis
function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/sound/tmesis_sound/temesis_sound

execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 2020 run kill @s


execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 2002 run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/action_func/tmesis/rotate

execute positioned ~1 ~ ~1 as @a[dy=2,dx=-2,dz=-2] run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/action_func/tmesis/tmesis_damage


