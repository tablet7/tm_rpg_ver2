#> tm_rpg:enemy/boss/guardian_wolf/hook/tick

# ボス「ガーディアンウルフ」の毎 tick の処理（手で書いた関数。リグ定義の hooks.tick）。guardian_wolf/tick から、生きているあいだだけ呼ばれる
# 見た目が第2形態に替わったら（HP 半分の咆哮で吠える瞬間）嵐を始め、そのあとは稲妻・定期の雷・周りの黄色いパーティクルを出す
# @s ＝ マスター（at @s）

# 嵐の始まり: 見た目が第2形態に替わった tick に一度だけ（boss_form は咆哮の swap_t（12 tick 目）でだけ 2 になる）
execute if score @s boss_form matches 2.. unless score @s gw_storm matches 1.. run function tm_rpg:enemy/boss/guardian_wolf/hook/storm_start
# ここから下は嵐のあいだだけ
execute unless score @s gw_storm matches 1.. run return 0
scoreboard players add @s gw_bolt 1

# 形態が変わる咆哮の稲妻（演出だけ）: 嵐の始まりから 5 tick ごとに 5 回。0 tick 目は storm_start が出す
execute if score @s gw_bolt matches 5 run function tm_rpg:enemy/boss/guardian_wolf/hook/storm_bolt
execute if score @s gw_bolt matches 10 run function tm_rpg:enemy/boss/guardian_wolf/hook/storm_bolt
execute if score @s gw_bolt matches 15 run function tm_rpg:enemy/boss/guardian_wolf/hook/storm_bolt
execute if score @s gw_bolt matches 20 run function tm_rpg:enemy/boss/guardian_wolf/hook/storm_bolt

# 定期の雷: 100 tick（5 秒）ごと。100・105・110 tick 目に1発ずつ（1人に 3 発）。最初は嵐の始まりの 5 秒後
# 120 tick 目で 20 に戻す（21〜120 の 100 tick でくり返す。上の稲妻の 5〜20 tick 目には戻らない）
execute if score @s gw_bolt matches 100 run function tm_rpg:enemy/boss/guardian_wolf/hook/periodic
execute if score @s gw_bolt matches 105 run function tm_rpg:enemy/boss/guardian_wolf/hook/periodic
execute if score @s gw_bolt matches 110 run function tm_rpg:enemy/boss/guardian_wolf/hook/periodic
# 雷雨を延ばす（storm_start で 1 日 ＝ 20 分にしてある。戦いが長引いても途中で晴れないように）
execute if score @s gw_bolt matches 100 run weather thunder 1d
execute if score @s gw_bolt matches 120.. run scoreboard players set @s gw_bolt 20

# 第2形態のあいだ、体の周りに黄色い粒と電気の火花
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.2} ~ ~2.5 ~ 2.5 1.2 2.5 0 3
particle minecraft:electric_spark ~ ~2.5 ~ 2 1 2 0.05 1
