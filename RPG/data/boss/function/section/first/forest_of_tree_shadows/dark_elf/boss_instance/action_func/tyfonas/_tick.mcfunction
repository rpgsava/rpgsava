#particle/sound
function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/particle/tyfonas_particle/tyfonas_paticle
function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/sound/tyfonas_sund/tyfonas_sound

#tyfonas
execute if score $forestOfTreeShadowsBossDarkElf Boss.TickCount matches 1250 run kill @e[type=phantom,tag=forestOfTreeShadows.DarkElfBoss.TyfonasPhantom] 

execute positioned ~2 ~ ~2 as @a[dy=50,dx=-4,dz=-4] run function boss:section/first/forest_of_tree_shadows/dark_elf/boss_instance/action_func/tyfonas/tyfonas_damage