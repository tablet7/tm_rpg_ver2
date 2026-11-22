#> tm_rpg:enemy/boss/guardian_wolf/tick

# guardian_wolf の毎tick処理。tm_rpg:main から（tm_rpg:enemy/main より前に）呼ばれる
# @s ＝ マスター（マーカー）

scoreboard players add @s boss_t 1
# 行動ごとのクールタイム
scoreboard players remove @s[scores={boss_cd2=1..}] boss_cd2 1
scoreboard players remove @s[scores={boss_cd3=1..}] boss_cd3 1
scoreboard players remove @s[scores={boss_cd4=1..}] boss_cd4 1
scoreboard players remove @s[scores={boss_cd5=1..}] boss_cd5 1
scoreboard players remove @s[scores={boss_cd6=1..}] boss_cd6 1
# 部位側の関数から読めるように写す
scoreboard players operation #t boss_tmp = @s boss_t
scoreboard players operation #move boss_tmp = @s boss_move
# このtickの印（本体がいる・殴られた・形態のモデル差し替え）
scoreboard players set #core boss_tmp 0
scoreboard players set #hurt boss_tmp 0
scoreboard players set #swap boss_tmp 0
scoreboard players set #walk boss_tmp 0
scoreboard players set #walkstop boss_tmp 0
# 被弾の赤フラッシュ（6 で赤、1 で元の色。見た目が読む）
scoreboard players operation #flash boss_tmp = @s boss_flash
scoreboard players remove @s[scores={boss_flash=1..}] boss_flash 1
# 1) マスター側の行動（向き・移動・技）。1 は待機
execute if score #move boss_tmp matches 1 run function tm_rpg:enemy/boss/guardian_wolf/move/idle
execute if score #move boss_tmp matches 2 run function tm_rpg:enemy/boss/guardian_wolf/move/swipe
execute if score #move boss_tmp matches 3 run function tm_rpg:enemy/boss/guardian_wolf/move/dash
execute if score #move boss_tmp matches 4 run function tm_rpg:enemy/boss/guardian_wolf/move/spin
execute if score #move boss_tmp matches 5 run function tm_rpg:enemy/boss/guardian_wolf/move/leap
execute if score #move boss_tmp matches 6 run function tm_rpg:enemy/boss/guardian_wolf/move/roar
execute if score #move boss_tmp matches 7 run function tm_rpg:enemy/boss/guardian_wolf/move/death
# 2) 見た目と当たり判定をまとめて1回の検索で処理する。at @s を付け直して、動いた後の位置と向きを使う
execute at @s as @e[type=#tm_rpg:guardian_wolf_part,tag=guardian_wolf,distance=..48] run function tm_rpg:enemy/boss/guardian_wolf/part_tick
# 倒れている最中は、ここまで
execute if score @s boss_dead matches 1 run return 0
# 3) 本体の hp を記録（撃破と「消えた」を見分けるため）、殴られたら赤くする
execute if score #core boss_tmp matches 1 run scoreboard players operation @s boss_core_hp = #core_hp boss_tmp
execute if score #hurt boss_tmp matches 1 unless score @s boss_flash matches 1.. run scoreboard players set @s boss_flash 6
# 形態 2: hp が最大の 50% 以下になったら（#thr ＝ 最大 hp × 50 / 100）
scoreboard players operation #thr boss_tmp = #core_max boss_tmp
scoreboard players set #c boss_tmp 50
scoreboard players operation #thr boss_tmp *= #c boss_tmp
scoreboard players set #c boss_tmp 100
scoreboard players operation #thr boss_tmp /= #c boss_tmp
execute if score #core boss_tmp matches 1 if score @s boss_phase matches ..1 if score #core_hp boss_tmp <= #thr boss_tmp run function tm_rpg:enemy/boss/guardian_wolf/phase/2
# 毎tickの処理（手で書いた関数）
function tm_rpg:enemy/boss/guardian_wolf/hook/tick
# 4) 撃破（hp 0 以下で消えた）／消えた（/reload など。報酬なし）／近くに誰もいない
execute if score #core boss_tmp matches 0 if score @s boss_core_hp matches ..0 run return run function tm_rpg:enemy/boss/guardian_wolf/death
execute if score #core boss_tmp matches 0 run return run function tm_rpg:enemy/boss/guardian_wolf/despawn
execute unless entity @a[distance=..48] run function tm_rpg:enemy/boss/guardian_wolf/despawn
