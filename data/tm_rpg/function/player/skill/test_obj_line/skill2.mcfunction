#> tm_rpg:player/skill/test_obj_line/skill2

# スキル「test設置物連続設置」の管理役（見えない marker）の設定。skill1 から execute summon ... run function で呼ばれる
# 何 tick ごと・何個・当たる間隔・進む距離を、ここで変える。最後に共通の main_projectile/spawner/init を呼ぶ
# @s ＝ 出したばかりの管理役（marker）

# 向きをプレイヤーの横の向きに合わせる（skill1 の rotated ~ 0。この向きにまっすぐ並べる）
rotate @s ~ ~

# 1個目の場所を地面の高さに合わせる（2個目からは spawner/spawn が合わせる）
function tm_rpg:player/skill/common/snap_ground

# 子を出す関数を spawner/spawn が呼ぶためのタグ（skill3）
tag @s add test_obj_line
# 進むたびに地面の高さに合わせる（壁の中ならそこでやめる）
tag @s add spawn_ground

# 10 tick（0.5秒）ごとに、5個出す
scoreboard players set @s spawn_interval 10
scoreboard players set @s spawn_count 5

# 1個出すごとに前へ 1.5マス進む（0.1 マス単位。15 ＝ 1.5 マス。1〜255）。マス目には合わせず、斜めでも等間隔に並ぶ
scoreboard players set @s spawn_step 15

# 子は 10 tick ごとに当たる（全部のマグマブロックで共有。この行を消すと、全部で1体1回だけ当たる）
# 当たる tick は「スキルを使った tick から hit_interval ごと」でグループ共通。spawn_interval を hit_interval の倍数にしないと、
# 新しく出たブロックは次の共通の tick まで当たらない
scoreboard players set @s hit_interval 10

# 共通の初期設定（スキルを使った tick の値を覚える・id・開始時刻・消えるまでの tick）
function tm_rpg:player/skill/main_projectile/spawner/init
