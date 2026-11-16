#> tm_rpg:player/skill/fx/seq/init

# 時間差の演出（何 tick 後に音・パーティクルを出す）の進行役（marker）の初期設定（共通）。<スキル>/fx/<場面>_seq_init から呼ばれる
# 進行役は main から毎 tick fx/seq/tick が呼ばれ、スコア fx_t（出してからの tick 数。1 から）を増やして、スキルごとの関数（<スキル>/fx/<場面>_seq）を呼ぶ
# 先に #fx_len temp（最後の演出の tick 数）と #skill_owner temp（使った人の ent_id。tag fx_follow で付いて行く相手）を入れておくこと
# 使った人に付いて行かせたいときは、呼んだあとで tag fx_follow を付ける
# @s ＝ 出したばかりの進行役（marker）。実行位置・向き ＝ 演出を出す場所・向き

rotate @s ~ ~
tag @s add fx_seq
scoreboard players set @s fx_t 0
scoreboard players operation @s summon_ent_id = #skill_owner temp

# 最後の演出の tick のあとで消える（main の system kill）
tag @s add delete_entity
scoreboard players operation @s kill_time = #fx_len temp
