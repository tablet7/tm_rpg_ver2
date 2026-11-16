#> tm_rpg:player/skill/main_projectile/turret/tick

# タレット（tag turret）の毎 tick の処理。main_projectile/tick から呼ばれる
# turret_interval tick ごとに、敵の方を向いて（turret/aim）、置いたときの値を戻し（turret/restore）、スキル名のタグで撃つ関数を呼ぶ
# 撃つ関数は execute at @s で呼ぶ（main が tick を呼んだときの向きは、向きを変える前のものなので）
# 敵が置いたタレット（tag enemy_shot）は、撃つ turret_warn tick 前に向きを決めて予兆を出し（turret/warn）、撃つときは向きを変えない
# スキルを足したら、下の「撃つ」に1行足す（敵に使わせるなら turret/warn にも1行）
# 消えるのは main の system kill（kill_time）に任せる
# @s ＝ タレット（at @s）

# 敵のタレット: 撃つ turret_warn tick 前に、向きを決めて予兆を出す
execute if entity @s[tag=enemy_shot] if score @s turret_timer = @s turret_warn run function tm_rpg:player/skill/main_projectile/turret/warn
scoreboard players remove @s turret_timer 1
execute if score @s turret_timer matches 1.. run return 0
scoreboard players operation @s turret_timer = @s turret_interval

function tm_rpg:player/skill/main_projectile/turret/restore
# プレイヤーのタレットは、撃つときに敵の方を向く（敵のタレットは、予兆を出したときの向きのまま撃つ）
execute if entity @s[tag=!enemy_shot] run function tm_rpg:player/skill/main_projectile/turret/aim

# 撃つ（スキルごと。<スキル>/skill3 は @s ＝ タレット、実行位置 ＝ タレットの足元、向き ＝ タレットの向き）
execute if entity @s[tag=test_turret] at @s run function tm_rpg:player/skill/test_turret/skill3

scoreboard players set #skill_side temp 0
