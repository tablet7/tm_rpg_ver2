#> tm_rpg:player/skill/main_projectile/spawner/init

# 時間差で設置物などを出す管理役（marker）の共通の初期設定。スキルの管理役の設定（<スキル>/skill2）の最後に呼ぶ
# 管理役は見えない marker。スキルを使った tick の値（ダメージ・func・子の kill_time・撃った人）を覚えておき、
# spawner/tick が spawn_interval tick ごとに1個ずつ、spawn_count 個まで子（設置物）を出す
# 先にプレイヤー側で player/skill/skill_damage を呼び、storage tm_rpg:damage に kill_time（子の消えるまでの tick）を入れておくこと
# 先にスキル側で入れておくもの（無ければ下の既定値）
#   スコア spawn_interval … 何 tick ごとに出すか（既定 10）
#   スコア spawn_count    … 何個出すか（既定 1）
#   スコア hit_interval   … 子が一定の間隔で当たるときの間隔（無ければ、グループ全体で1体1回だけ当たる）
#   スコア spawn_step     … 1個出すごとに前へ進む距離（0.1 マス単位。15 ＝ 1.5 マス。1〜255。既定 10）。マス目に合わせず、まっすぐ等間隔に進む
#   スキル名のタグ（例: test_obj_line）… spawner/spawn がこのタグで子を出す関数を呼ぶ
#   tag spawn_ground   … 進むたびに地面の高さに合わせ、壁の中なら出すのをやめる（無ければ高さはそのまま）
#   tag spawn_separate … 子が当たり判定を共有しない（子それぞれ別の id で、別々に当たる）
# damage_marker は付けない（管理役は当たり判定を持たない。ノックバックの「近くの弾」にも選ばれないように）
# @s ＝ 出したばかりの管理役（marker）

# 基本のタグ（projectile: main が毎 tick tick を動かす（tick が spawner/tick に回す）/ delete_entity: reload で消える）
tag @s add projectile
tag @s add delete_entity
tag @s add spawner

# 既定値
execute unless score @s spawn_interval matches 1.. run scoreboard players set @s spawn_interval 10
execute unless score @s spawn_count matches 1.. run scoreboard players set @s spawn_count 1
execute unless score @s spawn_step matches 1.. run scoreboard players set @s spawn_step 10

# グループの id と開始時刻（子はみんなこれを使うので、当たり判定を共有する。main_projectile/interval）
execute store result score @s ent_id run random value 0..2147483646
execute store result score @s hit_start run time query gametime

# スキルを使った tick の値を覚える（子を出すときに spawner/spawn が storage と #skill_owner に戻す）
scoreboard players operation @s summon_ent_id = #skill_owner temp
# 敵が出した管理役（#skill_side temp が 1）は tag enemy_shot（子を出すときに spawner/spawn が #skill_side に戻す）
execute if score #skill_side temp matches 1 run tag @s add enemy_shot
execute store result score @s damage_give_p run data get storage tm_rpg:damage p_damage
execute store result score @s damage_give_m run data get storage tm_rpg:damage m_damage
execute store result score @s damage_give_c run data get storage tm_rpg:damage c_damage
execute store result score @s spawn_kill_time run data get storage tm_rpg:damage kill_time
execute store result score @s sustain_power run data get storage tm_rpg:damage sustain_power
execute store result score @s sustain_time run data get storage tm_rpg:damage sustain_time
execute unless data storage tm_rpg:damage {func:"tm_rpg:system/naguri/non_func"} run data modify entity @s data.func set from storage tm_rpg:damage func

# 1個目は、この tick に出す（spawner/tick が 1 減らして 0 になったら出す）
scoreboard players set @s spawn_timer 1

# 消えるまでの tick（全部出し終わるまで残るように 間隔 × 個数。出し終わったら spawner/tick が消す。reload でも消える）
scoreboard players operation @s kill_time = @s spawn_interval
scoreboard players operation @s kill_time *= @s spawn_count
