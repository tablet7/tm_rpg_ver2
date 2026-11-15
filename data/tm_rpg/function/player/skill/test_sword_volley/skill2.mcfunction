#> tm_rpg:player/skill/test_sword_volley/skill2

# スキル「test剣の一斉射撃」の管理役（見えない marker）の設定。fire から execute summon ... run function で呼ばれる
# 何 tick ごと・進む距離・1本目までの待ち時間を、ここで変える（撃つ回数は fire の #volley_count temp）
# 管理役のいる場所に向けて剣を撃つので、刺さる場所は spawn_step の間隔で並ぶ
# @s ＝ 出したばかりの管理役（marker）

# 向きを横の向きに合わせる（fire の rotated ~ 0。この向きに進む）
rotate @s ~ ~

# 剣を撃つ関数を spawner/spawn が呼ぶためのタグ（skill3）
tag @s add test_sword_volley

# 3 tick ごとに、剣の本数だけ撃つ
scoreboard players set @s spawn_interval 3
scoreboard players operation @s spawn_count = #volley_count temp

# 1本撃つごとに前へ 2.5マス進む（0.1 マス単位。25 ＝ 2.5 マス。1〜255）
scoreboard players set @s spawn_step 25

# 共通の初期設定（スキルを使った tick の値を覚える・id・開始時刻・消えるまでの tick）
function tm_rpg:player/skill/main_projectile/spawner/init

# この発動の id（待つ剣と同じ。skill3 がこれで自分の剣を探す）
scoreboard players operation @s spawner_id = #spawner_id temp

# 1本目まで 10 tick 待つ（剣が揺れて待つ演出のため。init は 1 ＝ すぐ撃つ）。待つ分だけ管理役の消える時間も延ばす
scoreboard players set @s spawn_timer 10
scoreboard players add @s kill_time 9

# 待つ剣の消える時間に使う（fire）
scoreboard players operation #volley_wait temp = @s kill_time
