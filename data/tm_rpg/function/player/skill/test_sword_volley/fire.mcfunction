#> tm_rpg:player/skill/test_sword_volley/fire

# スキル「test剣の一斉射撃」の本体（剣を出して、管理役を出す）。skill1 と、タレット（test_turret/skill3）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（skill1 は skill_damage、敵は enemy/skill/warn_test_sword_volley、タレットは turret/restore）
# 実行位置 ＝ 足元（剣の箱と管理役の高さの基準）、向き ＝ 撃つ向き（横の向きだけ使う）
# @s ＝ だれでもよい（使わない）

# 剣の本数（管理役が撃つ回数にもなる。ここだけで変える）
scoreboard players set #volley_count temp 10

# 撃った剣の消えるまでの tick（50 ＝ 2.5秒。管理役が覚え、撃つときに spawner/spawn が storage に戻すので skill4 が読む）
data modify storage tm_rpg:damage kill_time set value 50

# この発動の剣と管理役を結びつける id（スコア spawner_id。同じ人が続けて使っても、自分の剣だけを撃つ）
execute store result score #spawner_id temp run random value 0..2147483646

# 管理役を前方3マスに、足元の高さで出す（rotated ~ 0 で上下の向きを無視する。高さは地面に合わせない（軽い））
# skill2 が、管理役が消えるまでの tick を #volley_wait temp に入れる
execute rotated ~ 0 positioned ^ ^ ^3 align y positioned ~ ~0.5 ~ summon minecraft:marker run function tm_rpg:player/skill/test_sword_volley/skill2

# 待つ剣の消えるまでの tick（管理役が撃ち終わるまで ＋ 10。撃つときに入れ直す）
scoreboard players add #volley_wait temp 10
execute store result storage tm_rpg:damage kill_time int 1 run scoreboard players get #volley_wait temp

# 剣を本数だけ出す
execute rotated ~ 0 run function tm_rpg:player/skill/test_sword_volley/summon_loop
