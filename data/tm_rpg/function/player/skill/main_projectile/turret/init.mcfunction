#> tm_rpg:player/skill/main_projectile/turret/init

# 一定の間隔でスキルを撃つタレット（tag turret）の共通の初期設定。スキルのタレットの設定（<スキル>/skill2）の最後に呼ぶ
# main_projectile/init でダメージ・撃った人・func・消えるまでの tick（storage tm_rpg:damage kill_time）を覚え、当たり判定は外す
# 毎 tick main_projectile/tick が turret/tick に回し、turret_interval tick ごとに、16 マス以内の一番近い敵に横の向きを変えて（いなければ変えない）、
# スキル名のタグで <スキル>/skill3 を呼ぶ
# 先にスキル側で入れておくもの
#   スコア turret_interval … 何 tick ごとに撃つか（無ければ 80）
#   スコア turret_timer    … 1回目を撃つまでの tick（無ければ turret_interval）
#   スコア turret_warn     … 敵が置いたとき、撃つ何 tick 前に予兆を出すか（無ければ 20。プレイヤーのタレットは使わない）。turret_interval より短くすること（長いと2回目から予兆が出ない）
#   スキル名のタグ（例: test_turret）… turret/tick がこのタグで撃つ関数を呼ぶ
#   見た目（item）。init が func をアイテムに書くので、見た目はこれより前に入れる
# タレット本体は地面の高さ（マスの中心 ＋ 0.5）に置き、浮かせるのは transformation の translation だけにする
#   （撃つスキルが本体の高さを足元として使うため。tp で動かす演出（float_bob など）も使えない）
# @s ＝ 出したばかりのタレット（item_display）

function tm_rpg:player/skill/main_projectile/init

# タレットは当たらない（撃ったスキルが当たる）
tag @s remove damage_marker
tag @s add turret

execute unless score @s turret_interval matches 1.. run scoreboard players set @s turret_interval 80
execute unless score @s turret_timer matches 1.. run scoreboard players operation @s turret_timer = @s turret_interval
# 敵が置いたタレット（tag enemy_shot）は、撃つ前に予兆を出す（turret/warn）。1回目も予兆の時間ぶんは待つ
execute unless score @s turret_warn matches 1.. run scoreboard players set @s turret_warn 20
execute if entity @s[tag=enemy_shot] if score @s turret_timer < @s turret_warn run scoreboard players operation @s turret_timer = @s turret_warn
