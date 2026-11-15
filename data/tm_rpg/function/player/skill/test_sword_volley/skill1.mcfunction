#> tm_rpg:player/skill/test_sword_volley/skill1

# スキル「test剣の一斉射撃（頭上に剣を並べ、前方へ次々と撃ち出す）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 頭上の箱のランダムな位置に剣をまとめて出して待たせ（上下に揺れる）、見えない管理役（marker）が前へ進みながら、
# 待っている剣をランダムに1本ずつ、管理役のいる場所へ撃つ（main_projectile/spawner）
#   skill2 … 管理役の設定（何 tick ごと・進む距離・1本目までの待ち時間）
#   skill3 … 管理役が待っている剣を1本選んで撃つ（spawner/spawn から呼ばれる）
#   skill4 … 撃つ剣の設定（管理役に向けて飛ばす）
#   skill5 … 待つ剣の設定（頭上の箱のランダムな位置に出す）。summon_loop が本数だけ呼ぶ
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る。剣が出すときに覚える）
function tm_rpg:player/skill/skill_damage

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

return 1
