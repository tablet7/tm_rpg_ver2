#> tm_rpg:player/skill/main_projectile/turret/warn

# 敵が置いたタレット（tag enemy_shot）が、撃つ turret_warn tick 前に、向きを決めて予兆を出す。turret/tick から呼ばれる
# ここで向きを決め、撃つときは向きを変えない（予兆を出した所へそのまま撃つので、プレイヤーが避けられる）
# 予兆の形と大きさはスキルごと（<スキル>/warn）。タレットのスキルを足したら、下に1行足す
# @s ＝ タレット（at @s）

# 置いた敵の id を戻して（turret/aim が使う）、いちばん近いプレイヤーの方へ横の向きを変える
function tm_rpg:player/skill/main_projectile/turret/restore
function tm_rpg:player/skill/main_projectile/turret/aim
scoreboard players set #skill_side temp 0

# 予兆を出す（<スキル>/warn は @s ＝ タレット、実行位置 ＝ タレットの足元、向き ＝ 決めた向き）
execute if entity @s[tag=test_turret] at @s run function tm_rpg:player/skill/test_turret/warn
