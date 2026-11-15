#> tm_rpg:player/skill/test_sword_rain/skill2

# スキル「test剣の雨」の管理役（見えない marker）の設定。skill1 から execute summon ... run function で呼ばれる
# 何 tick ごと・何本・進む距離を、ここで変える。最後に共通の main_projectile/spawner/init を呼ぶ
# 管理役のいる場所に向けて剣を飛ばすので、刺さる場所は spawn_step の間隔で並ぶ
# @s ＝ 出したばかりの管理役（marker）

# 向きをプレイヤーの横の向きに合わせる（skill1 の rotated ~ 0。この向きに進む。剣を出す箱もこの向きに回る）
rotate @s ~ ~

# 剣を出す関数を spawner/spawn が呼ぶためのタグ（skill3）
tag @s add test_sword_rain

# 剣はそれぞれ別々に当たる（全部の剣で当たり判定を共有しない）
tag @s add spawn_separate

# 3 tick ごとに、5本出す
scoreboard players set @s spawn_interval 3
scoreboard players set @s spawn_count 5

# 1本出すごとに前へ 2.5マス進む（0.1 マス単位。25 ＝ 2.5 マス。1〜255）
scoreboard players set @s spawn_step 25

# 共通の初期設定（スキルを使った tick の値を覚える・id・開始時刻・消えるまでの tick）
function tm_rpg:player/skill/main_projectile/spawner/init
