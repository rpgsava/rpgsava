scoreboard players add @s Core.System.Gui.Scale 1
execute if score @s Core.System.Gui.Scale matches 3 run scoreboard players set @s Core.System.Gui.Scale 0


data merge storage core:message {msg:'[{"text":"GUIScaleを変更しました"}]'}
function m_core:message/system