#> tm_rpg:player/skill/main_projectile/turret/restore

# タレットが置いたときに覚えた値（ダメージ・func・撃った人）を、storage tm_rpg:damage と #skill_owner temp に戻す。turret/tick から呼ばれる
# 撃つスキル（弾の main_projectile/init など）が、プレイヤーが使ったときと同じように読めるようにする
# @s ＝ タレット

execute store result storage tm_rpg:damage p_damage int 1 run scoreboard players get @s damage_give_p
execute store result storage tm_rpg:damage m_damage int 1 run scoreboard players get @s damage_give_m
execute store result storage tm_rpg:damage c_damage int 1 run scoreboard players get @s damage_give_c
data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"
execute if data entity @s item.components."minecraft:custom_data".func run data modify storage tm_rpg:damage func set from entity @s item.components."minecraft:custom_data".func
scoreboard players operation #skill_owner temp = @s summon_ent_id

# 敵が置いたタレット（tag enemy_shot）なら、撃つ弾も敵の弾にする（turret/tick が撃ったあと 0 に戻す）
execute store result score #skill_side temp if entity @s[tag=enemy_shot]
