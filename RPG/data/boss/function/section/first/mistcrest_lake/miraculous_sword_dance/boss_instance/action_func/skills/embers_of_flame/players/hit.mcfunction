particle flame ~ ~ ~ 1 0 1 10 100
scoreboard players set $dmg Mobs.Attack.Damage 1
tag @s add Mobs.Command.Attacked
function mobs:_damage/_constant_player


#サイズをちょっと上昇
scoreboard players add $swordScale Boss.mistcrestLakeBoss.miraculousSwordDance 5
execute as @e[tag=mistcrestLakeBoss.miraculousSwordDance.embersOfFlame.Sword,limit=1] at @s run function boss:section/first/mistcrest_lake/miraculous_sword_dance/boss_instance/action_func/skills/embers_of_flame/players/size_change