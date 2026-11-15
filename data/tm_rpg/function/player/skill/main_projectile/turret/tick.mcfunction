#> tm_rpg:player/skill/main_projectile/turret/tick

# タレット（tag turret）の毎 tick の処理。main_projectile/tick から呼ばれる
# turret_interval tick ごとに、敵の方を向いて（turret/aim）、置いたときの値を戻し（turret/restore）、スキル名のタグで撃つ関数を呼ぶ
# 撃つ関数は execute at @s で呼ぶ（main が tick を呼んだときの向きは、向きを変える前のものなので）
# スキルを足したら、下の「撃つ」に1行足す
# 消えるのは main の system kill（kill_time）に任せる
# @s ＝ タレット（at @s）

scoreboard players remove @s turret_timer 1
execute if score @s turret_timer matches 1.. run return 0
scoreboard players operation @s turret_timer = @s turret_interval

function tm_rpg:player/skill/main_projectile/turret/restore
function tm_rpg:player/skill/main_projectile/turret/aim

# 撃つ（スキルごと。<スキル>/skill3 は @s ＝ タレット、実行位置 ＝ タレットの足元、向き ＝ タレットの向き）
execute if entity @s[tag=test_turret] at @s run function tm_rpg:player/skill/test_turret/skill3
