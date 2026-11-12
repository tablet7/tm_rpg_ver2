#> tm_rpg:player/skill/main_projectile/hit

# 弾の当たり判定（共通）。弾の当たり判定の箱に、敵（tag mob と hitdamage）の当たり判定が重なっていたらダメージを与える
# スキルごとの弾の関数（<スキル>/skill3）か system/delete_entity_direction/damage_main から毎 tick 呼ばれる
# 戻り値: 1 ＝ 貫通しない弾が当たった（呼んだ側の main_projectile/tick が弾を消す）、0 ＝ 消さない
# 弾のスコア・タグで動きを変えられる
#   スコア hit_size … 当たり判定の箱の大きさ（1〜3 マス四方。init が、入っていなければ 1 にする）
#   tag pierce      … 貫通する（当たっても消えない。同じ敵には1回だけ当たる）。付けないときは当たったら消える
# 大きさを足すときは、下の「箱の中の敵の数」と「ダメージ本体」に1行ずつ足す（positioned は -大きさ/2、dx は 大きさ-1）
# 1 tick に進む距離より箱が小さいと、すり抜けることがある
# @s ＝ 弾（at @s）

# 箱の中の敵の数（dx の箱は敵の当たり判定と重なるかで調べるので、大きい敵にも当たる）
scoreboard players set #tama_hit temp 0
execute if score @s hit_size matches 1 positioned ~-0.5 ~-0.5 ~-0.5 store result score #tama_hit temp if entity @e[type=#tm_rpg:mob_type,tag=mob,tag=hitdamage,dx=0,dy=0,dz=0]
execute if score @s hit_size matches 2 positioned ~-1 ~-1 ~-1 store result score #tama_hit temp if entity @e[type=#tm_rpg:mob_type,tag=mob,tag=hitdamage,dx=1,dy=1,dz=1]
execute if score @s hit_size matches 3 positioned ~-1.5 ~-1.5 ~-1.5 store result score #tama_hit temp if entity @e[type=#tm_rpg:mob_type,tag=mob,tag=hitdamage,dx=2,dy=2,dz=2]

# 当たる敵がいなければ何もしない（ほとんどの tick はここで終わる）
execute if score #tama_hit temp matches 0 run return 0

# 弾が持っているダメージと関数を、当たる敵ごとに使えるように用意する
function tm_rpg:player/skill/main_projectile/hit_prepare

# 実際に当たった敵の数（hit_target で数える）
scoreboard players set #tama_hit temp 0

# ダメージ本体（貫通する弾が、前の tick に当たった敵にもう一度当たらないように tama_hit_id を見る）
execute if score @s hit_size matches 1 positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#tm_rpg:mob_type,tag=mob,tag=hitdamage,dx=0,dy=0,dz=0] unless score @s tama_hit_id = #tama_id temp at @s run function tm_rpg:player/skill/main_projectile/hit_target
execute if score @s hit_size matches 2 positioned ~-1 ~-1 ~-1 as @e[type=#tm_rpg:mob_type,tag=mob,tag=hitdamage,dx=1,dy=1,dz=1] unless score @s tama_hit_id = #tama_id temp at @s run function tm_rpg:player/skill/main_projectile/hit_target
execute if score @s hit_size matches 3 positioned ~-1.5 ~-1.5 ~-1.5 as @e[type=#tm_rpg:mob_type,tag=mob,tag=hitdamage,dx=2,dy=2,dz=2] unless score @s tama_hit_id = #tama_id temp at @s run function tm_rpg:player/skill/main_projectile/hit_target

# 貫通しない弾が当たったら 1 を返す（ここで kill しないのは、呼んだ側で続きの処理を止めるため）
execute if entity @s[tag=!pierce] if score #tama_hit temp matches 1.. run return 1
return 0
