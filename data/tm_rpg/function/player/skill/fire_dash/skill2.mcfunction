#> tm_rpg:player/skill/fire_dash/skill2

# スキル「炎の突進」の溜めの管理役（見えない marker）の設定。fire から execute summon ... run function で呼ばれる（プレイヤーが使ったときだけ）
# 時間差で出す共通の管理役（main_projectile/spawner）を使い、10 tick 後に1回だけ skill3 を呼ぶ（ダメージ・func・撃った人は spawner が覚えて戻す）
# @s ＝ 出したばかりの管理役（marker）

# skill3 を spawner/spawn が呼ぶためのタグ
tag @s add fire_dash
scoreboard players set @s spawn_interval 10
scoreboard players set @s spawn_count 1

# 共通の初期設定（スキルを使った tick の値を覚える）
function tm_rpg:player/skill/main_projectile/spawner/init

# 1回目を 10 tick 後にする（init は「この tick に出す」1 を入れる）。消えるのは呼んだあと（spawner/tick）か、念のための kill_time
scoreboard players set @s spawn_timer 10
scoreboard players set @s kill_time 15
