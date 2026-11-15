#> tm_rpg:player/skill/test_turret/skill1

# スキル「testタレット（剣の一斉射撃を撃つタレットを置く）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す
# 前方2マスの地面に、浮いたディスペンサーのタレットを「15 ＋ 持続時間（sustain_time）」秒置く（main_projectile/turret）
# タレットは 4 秒ごとに、16 マス以内の一番近い敵の方を向いて（いなければ向きはそのまま）、test剣の一斉射撃（test_sword_volley/fire）を撃つ
# 同じ人のこのタレットは1つだけ（新しく置くと、古いのが消える）
#   skill2 … タレットの設定（撃つ間隔・1回目までの tick・見た目）
#   skill3 … 撃つ（turret/tick から呼ばれる）
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（タレットが置いた瞬間の値を覚えて、撃つたびに使う）
function tm_rpg:player/skill/skill_damage

# 1つだけ: 自分の古いタレットを消す（新しいのを出す前に。あとで消すと新しいのも消える）
execute as @e[type=minecraft:item_display,tag=test_turret] if score @s summon_ent_id = #skill_owner temp run kill @s

# 置いておく tick ＝（15 ＋ 持続時間）秒 × 20（store の倍率 20 で tick にする。持続時間が無ければ 15 秒）
scoreboard players set #turret_time temp 15
scoreboard players operation #turret_time temp += @s sustain_time
execute store result storage tm_rpg:damage kill_time int 20 run scoreboard players get #turret_time temp

# 前方2マスに、足元の高さ（マスの中心）で出す。skill2 が地面の高さに合わせる
execute rotated ~ 0 positioned ^ ^ ^2 align xyz positioned ~0.5 ~0.5 ~0.5 summon minecraft:item_display run function tm_rpg:player/skill/test_turret/skill2

return 1
