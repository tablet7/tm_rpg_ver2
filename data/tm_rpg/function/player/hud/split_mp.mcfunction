#> tm_rpg:player/hud/split_mp

# MP バーの段階（#hud_g temp、0〜54）を 6 つの区切り hud_mp_g0〜5（それぞれ 0〜9）に分ける関数（マクロなし）
# player/hud/update から呼ばれる。区切り k ＝ (#hud_g − 9k) を 0〜9 に収めた値
# @s ＝ プレイヤー

scoreboard players operation @s hud_mp_g0 = #hud_g temp
scoreboard players operation @s hud_mp_g1 = #hud_g temp
scoreboard players remove @s hud_mp_g1 9
scoreboard players operation @s hud_mp_g2 = #hud_g temp
scoreboard players remove @s hud_mp_g2 18
scoreboard players operation @s hud_mp_g3 = #hud_g temp
scoreboard players remove @s hud_mp_g3 27
scoreboard players operation @s hud_mp_g4 = #hud_g temp
scoreboard players remove @s hud_mp_g4 36
scoreboard players operation @s hud_mp_g5 = #hud_g temp
scoreboard players remove @s hud_mp_g5 45

scoreboard players operation @s hud_mp_g0 < System CONTACT_9
scoreboard players operation @s hud_mp_g1 < System CONTACT_9
scoreboard players operation @s hud_mp_g2 < System CONTACT_9
scoreboard players operation @s hud_mp_g3 < System CONTACT_9
scoreboard players operation @s hud_mp_g4 < System CONTACT_9
scoreboard players operation @s hud_mp_g5 < System CONTACT_9
execute if score @s hud_mp_g1 matches ..-1 run scoreboard players set @s hud_mp_g1 0
execute if score @s hud_mp_g2 matches ..-1 run scoreboard players set @s hud_mp_g2 0
execute if score @s hud_mp_g3 matches ..-1 run scoreboard players set @s hud_mp_g3 0
execute if score @s hud_mp_g4 matches ..-1 run scoreboard players set @s hud_mp_g4 0
execute if score @s hud_mp_g5 matches ..-1 run scoreboard players set @s hud_mp_g5 0
