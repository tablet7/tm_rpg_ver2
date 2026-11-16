#> tm_rpg:player/skill/test_sword_volley/skill1

# スキル「test剣の一斉射撃（頭上に剣を並べ、前方へ次々と撃ち出す）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 頭上の箱のランダムな位置に剣をまとめて出して待たせ（上下に揺れる）、見えない管理役（marker）が前へ進みながら、
# 待っている剣をランダムに1本ずつ、管理役のいる場所へ撃つ（main_projectile/spawner）
#   fire   … 本体（剣を出して、管理役を出す。タレット test_turret からも呼ばれる）
#   skill2 … 管理役の設定（何 tick ごと・進む距離・1本目までの待ち時間）
#   skill3 … 管理役が待っている剣を1本選んで撃つ（spawner/spawn から呼ばれる）
#   skill4 … 撃つ剣の設定（管理役に向けて飛ばす）
#   skill5 … 待つ剣の設定（頭上の箱のランダムな位置に出す）。summon_loop が本数だけ呼ぶ
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る。剣が出すときに覚える）
function tm_rpg:player/skill/skill_damage

# 本体（剣を出して、管理役を出す。タレットからも使う）
function tm_rpg:player/skill/test_sword_volley/fire

return 1
