#> tm_rpg:player/skill/test_turret/warn

# スキル「testタレット」の、敵が置いたタレットが撃つ前の予兆。main_projectile/turret/warn から、tag test_turret で呼ばれる
# 撃つ技（test剣の一斉射撃）と同じ、前方 2〜26.5 マス・幅 3 マスの赤い板を、撃つまで（turret_warn tick）出す
# 板は敵の技の予兆と同じもの（enemy/skill/warn/init_plate）。タイマー（marker）は使わない（撃つのはタレットの turret_timer）
# @s ＝ タレット（at @s。向き ＝ 撃つ向き）

scoreboard players operation #warn_time temp = @s turret_warn
scoreboard players set #warn_width temp 30
scoreboard players set #warn_length temp 245
scoreboard players set #warn_center temp 0
scoreboard players set #warn_offset temp 20
# タレットの本体はマスの中心の高さにあるので、align y で地面の高さに下ろす（板は地面の少し上）
execute rotated ~ 0 align y positioned ~ ~0.02 ~ summon minecraft:item_display run function tm_rpg:enemy/skill/warn/init_plate
