#> tm_rpg:player/skill/main_projectile/hit_prepare

# 弾が敵に重なった tick だけ、弾が持っているダメージと関数をフェイクプレイヤーと storage tm_rpg:tama に写す関数。main_projectile/hit から呼ばれる
# （当たる敵が複数でも、敵ごとに hit_target で storage tm_rpg:damage に入れ直せるように）
# @s ＝ 弾

scoreboard players operation #tama_id temp = @s ent_id
scoreboard players operation #tama_p temp = @s damage_give_p
scoreboard players operation #tama_m temp = @s damage_give_m
scoreboard players operation #tama_c temp = @s damage_give_c

# 当たったときに実行する関数。main_projectile/init が弾に入れたものがあれば使う（無ければ何もしない）
data modify storage tm_rpg:tama func set value "tm_rpg:system/naguri/non_func"
execute if entity @s[type=minecraft:item_display] run data modify storage tm_rpg:tama func set from entity @s item.components."minecraft:custom_data".func
execute if entity @s[type=minecraft:marker] run data modify storage tm_rpg:tama func set from entity @s data.func
