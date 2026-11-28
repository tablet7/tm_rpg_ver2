#> tm_rpg:player/main

# プレイヤーの毎tick処理。tm_rpg:main から呼ばれる
# ステータス計算、アクションバー表示、HPバー更新、死亡検知、移動判定、弓・攻撃タイマーの管理を行う
# @s ＝ プレイヤー

# 死んだあと、リスポーンしたらリセットする（player/death/on_death が tag respawn_wait を付ける。hp=0 の判定より前に置く）
execute if entity @s[tag=respawn_wait] run function tm_rpg:player/death/respawn_check

# hp=0
execute if entity @s[scores={hp = ..0}] run function tm_rpg:player/death/death_main

# first_login
execute if entity @s[tag=!joined] run function tm_rpg:player/first_reload

# 2回目以降のログイン（一度抜けてから入り直した）ときもリセットする
# leave_game ＝ サーバーから抜けると増える統計（tm_rpg:reload で作る）。抜けたあと最初の tick にだけ動くよう、呼んだら消す
execute if score @s leave_game matches 1.. run function tm_rpg:player/login_sec

# バフ（スキル・ポーション）の時間切れ。一番早く切れる時刻 buff_next になった相手だけ外す（system/buff/expire）
execute if score @s buff_next <= #now temp run function tm_rpg:system/buff/expire

# 装備が変わったか。RPG の装備には目印の運（luck）の属性がランダムな値で付いていて、持ち替え・付け外しで合計が変わる（md/system_md/stutas.md）
# データは読まないので軽い。変わっていたら装備を読み直してステータスを組み立て直す
execute store result score @s eq_sig run attribute @s minecraft:luck get 1000000
execute unless score @s eq_sig = @s eq_sig_old run function tm_rpg:system/stutas/eq_changed

# HP,MP,Armorなどの変動（材料が変わったときだけ。stat_dirty が 0 でなければ組み立て直す）
execute unless score @s stat_dirty matches 0 run function tm_rpg:system/stutas/hendou_main

# 最大HP・最大MP が下がったとき（バフが切れた・装備を外したなど）、今の HP・MP を最大値まで下げる
execute if score @s hp > @s HP_MAX run scoreboard players operation @s hp = @s HP_MAX
execute if score @s mp > @s MP_MAX run scoreboard players operation @s mp = @s MP_MAX

# hp変動
scoreboard players operation @s hp_ratio = @s hp
scoreboard players operation @s hp_ratio *= System CONTACT_20
scoreboard players operation @s hp_ratio /= @s HP_MAX
execute unless score @s hp_ratio = @s hp_ratio_old run function tm_rpg:system/stutas/hp_ratio_watch

# HUD（アクションバー）。HP・MP・最大値が変わったときだけ組み立て直して送る（毎秒の送り直しは player/seconds）
execute unless score @s hp = @s hud_hp_old run function tm_rpg:player/hud/update
execute unless score @s mp = @s hud_mp_old run function tm_rpg:player/hud/update
execute unless score @s HP_MAX = @s hud_hpmax_old run function tm_rpg:player/hud/update
execute unless score @s MP_MAX = @s hud_mpmax_old run function tm_rpg:player/hud/update
execute if score @s hud_hold matches 1.. run function tm_rpg:player/hud/hold_tick

# hp表示テキストのtp（表示の中身は HP の割合が変わったときだけ system/stutas/hp_ratio_watch が変える）
scoreboard players operation System temp = @s ent_id
execute as @e[type=text_display,tag=mount_text] if score @s ent_id = System temp run tp @s ~ ~2.2 ~

# 死んだときの検知
execute as @s[scores={player_deaths=1..}] run function tm_rpg:player/death/on_death
scoreboard players set @s[scores={player_deaths=1..}] player_deaths 0

# playerの座標の記録
execute store result score @s x_pos run data get entity @s Pos[0] 100
execute store result score @s y_pos run data get entity @s Pos[1] 100
execute store result score @s z_pos run data get entity @s Pos[2] 100

scoreboard players set @s is_moving 0
execute unless score @s x_pos = @s old_x_pos run scoreboard players set @s is_moving 1
execute unless score @s y_pos = @s old_y_pos run scoreboard players set @s is_moving 1
execute unless score @s z_pos = @s old_z_pos run scoreboard players set @s is_moving 1

# playerが動いてないときの処理
execute if score @s is_moving matches 0 run function tm_rpg:player/no_move

scoreboard players operation @s old_x_pos = @s x_pos
scoreboard players operation @s old_y_pos = @s y_pos
scoreboard players operation @s old_z_pos = @s z_pos

# tag破壊(ノックバック用)
execute if score @s temp_victim_remove matches 0 run tag @s remove temp_victim
execute if score @s temp_victim_remove matches 0.. run scoreboard players remove @s temp_victim_remove 1

# 弓用
execute if score @s shot_bow_time matches 1.. run scoreboard players remove @s shot_bow_time 1
execute if score @s shot_bow matches 1.. run function tm_rpg:system/naguri/yumiya_enkyori

# 連続殴りを防ぐ
scoreboard players add @s attack_timer 1

# skill判定
execute if score @s used_carrot_on_a_stick matches 1.. run function tm_rpg:player/used_carrot_on_a_stick_skill

# スキルの溜めなどで動けないあいだの残り tick を減らし、0 で元に戻す（enemy/skill/lock。敵と同じ仕組み）
execute if score @s skill_lock matches 1.. run function tm_rpg:enemy/skill/lock_tick

# ダッシュが発動しなかったとき（持ち替えたなど）の後片付け。ダッシュ自体はスキル（player/skill/move/...）から player/dash/impulse を呼ぶ
execute if score @s dash_on matches 1.. run function tm_rpg:player/dash/impulse_tick
