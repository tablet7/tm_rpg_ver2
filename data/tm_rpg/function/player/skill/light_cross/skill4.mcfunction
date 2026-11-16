#> tm_rpg:player/skill/light_cross/skill4

# スキル「光の十字架」の、十字架を落とす管理役（見えない marker）の設定。hit_spawn から execute summon ... run function で呼ばれる
# 3 tick ごとに3本、skill3 で十字架を落とす（ダメージ・撃った人・敵の弾かは spawner/init が覚え、spawner/spawn が戻す）
# 入力: #light_cross_target temp ＝ 狙う相手の ent_id
# @s ＝ 出したばかりの管理役（marker。矢が当たった相手の足元）

tag @s add light_cross
# 十字架はそれぞれ別々に当たる（全部の十字架で当たり判定を共有しない）
tag @s add spawn_separate
scoreboard players set @s spawn_interval 3
scoreboard players set @s spawn_count 3
scoreboard players operation @s spawn_target_id = #light_cross_target temp

# 共通の初期設定（1本目は次の tick）
function tm_rpg:player/skill/main_projectile/spawner/init
